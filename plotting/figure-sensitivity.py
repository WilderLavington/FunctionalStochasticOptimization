

def create_sensetivity_table(x='optim_steps', y='avg_loss', download_data=False,
            loss=['MSELoss', 'CrossEntropyLoss', 'BCEWithLogitsLoss'],
            dataset_name=['mushrooms', 'ijcnn'], batch_size=[25, 125, 625],
            episodes=100, eta_schedule=['constant', 'stochastic'],
            log_eta=[-3., 3., -2., 2., -1., 1., 0.], m=[1,2,10,20],
            algo=['SGD', 'Adam', 'Adagrad', 'SGD_FMDOpt'],
            text_file_name='data_sense'):
    # =================================================
    # download data in
    if download_data:
        download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = runs_df = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)

    # create grab all datasets
    combinations = itertools.product(*[loss, dataset_name, batch_size, eta_schedule, log_eta, algo, m])
    final_records = []
    for loss_, dataset_name_, batch_size_, eta_schedule_, log_eta_, algo_, m_ in tqdm(combinations):
        try:
            out = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size_, 'episodes': episodes,
                'use_optimal_stepsize': 0, 'loss':loss_, 'algo': algo_,
                'log_eta': log_eta_, 'eta_schedule': eta_schedule_,
                'dataset_name': dataset_name_, 'm': m_},
                x_col=x , y_col=y)
        except:
            out = None
        if out:
            _, best_record = out
            # print(best_record)
            final_records.append(best_record)
            # if best_record['optim_steps'].values[0] in [6930.0, 8019.0]:

    # final_records = pd.DataFrame(final_records)
    final_records = pd.concat(final_records, axis=0, ignore_index=True)
    final_records = final_records.drop(['use_optimal_stepsize', 'episodes', 'c'], axis=1)
    final_records = final_records.drop_duplicates()
    final_records.boxplot(column=y, by=list(set(final_records.columns)-set(['log_eta'])))
    tfile = open(text_file_name+'.txt', 'w')
    tfile.write(final_records.to_string())
    tfile.close()
