

def generate_runtime_figure(loss, schedule, wandb_records, fig_name):

   # base info
   x ='optim_steps'
   y ='time_elapsed'

      # base info
   dataset_names = ['rcv1',]
   batch_sizes = [25, 125, 625]
   m = [1, 5, 10, 20]
#     wandb_records = wandb_records[wandb_records['group']=='AIstats_narval']
   # init plots
   fig, axs = plt.subplots(len(dataset_names), len(batch_sizes)+1, figsize=(16, 2))
   axs = [axs]
   colors = mpl.cm.Set1.colors   # Qualitative colormap
   colormap = {'SGD': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE'}
   colormap.update({'SSO-1':  '#CC6677' ,  'SSO-5': '#AA4499', 'SSO-10': '#882255' , 'SSO-100': '#332288',  'SSO-20': '#332288'})
   algorithms = ['SGD', 'Adam', 'SLS'] + ['SSO-'+str(m_) for m_ in m]
   label_map = {x:'Optimization-Steps', y:'Gradient-Norm'}

   # now add in the lines to each of the plots
   for row, dataset_name in enumerate(dataset_names):

       # figure out axis automatically
       run_times = []
       run_times_min = []
       run_times_max = []
       algos = []

       # SGD
       proc_df = format_dataframe(wandb_records,
           id_subfields={'fullbatch': 1,
           'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'SGD',
           'eta_schedule': schedule, 'dataset_name': dataset_name},
           x_col=x , y_col=y)
       if proc_df is not None:
           run_times.append(proc_df[y].values.max())
           run_times_max.append(proc_df[y+'75'].values.max())
           run_times_min.append(proc_df[y+'25'].values.max())
           algos.append('SGD')
       else:
           run_times.append(0.)
           run_times_max.append(0.)
           run_times_min.append(0.)
           algos.append('SGD')
           print('missing SLS  ', dataset_name, 'full-batch')

       # Adam
#         proc_df = format_dataframe(wandb_records,
#             id_subfields={'fullbatch': 1, #'_step': 499.0,
#             'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adam',
#             'eta_schedule': 'constant', 'dataset_name': dataset_name},
#             x_col=x , y_col=y)
#         if proc_df is not None:
#             run_times.append(proc_df[y].values.max())
#             run_times_max.append(proc_df[y+'75'].values.max())
#             run_times_min.append(proc_df[y+'25'].values.max())
#             algos.append('Adam')
#         else:
#             run_times.append(0.)
#             run_times_max.append(0.)
#             run_times_min.append(0.)
#             algos.append('Adam')
#             print('missing Adam  ', dataset_name, 'full-batch')

       # SLS
       proc_df = format_dataframe(wandb_records,
           id_subfields={'fullbatch': 1,
           'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'LSOpt',
           'eta_schedule': schedule, 'dataset_name': dataset_name},
           x_col=x , y_col=y)
       if proc_df is not None:
           run_times.append(proc_df[y].values.max())
           run_times_max.append(proc_df[y+'75'].values.max())
           run_times_min.append(proc_df[y+'25'].values.max())
           algos.append('SLS')
       else:
           run_times.append(0.)
           run_times_max.append(0.)
           run_times_min.append(0.)
           algos.append('SLS')
           print('missing SLS  ', dataset_name, 'full-batch')

       # FMDopt theoretical
       for m_ in m:
           # create parsed info
           proc_df = format_dataframe(wandb_records,
               id_subfields={'fullbatch': 1,
                   'use_optimal_stepsize': 1,
                   'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m_,
                   'eta_schedule': schedule, 'dataset_name': dataset_name},
                    avg_subfields=['seed'], max_subfields=['c'],
               x_col=x, y_col=y)
           if proc_df is not None:
               run_times.append(proc_df[y].values.max())
               run_times_max.append(proc_df[y+'75'].values.max())
               run_times_min.append(proc_df[y+'25'].values.max())
               algos.append('SSO-'+str(m_))
           else:
               run_times.append(0.)
               run_times_max.append(0.)
               run_times_min.append(0.)
               algos.append('SSO-'+str(m_))

       axs[row][-1].barh([_ for _ in range(len(algos))], run_times,
                               align='center', edgecolor = "black",
                               color=[colormap[algo] for algo in algos],
#                                   xerr=[run_times_min, run_times_max]
                        )
       axs[row][-1].set_yticks([_ for _ in range(len(algos))], labels=algos)
       axs[row][-1].grid()

       # mini-batch plots
       for col, batch_size in enumerate(batch_sizes):

           # figure out axis automatically
           run_times = []
           run_times_min = []
           run_times_max = []
           algos = []

           # SGD
           proc_df = format_dataframe(wandb_records,
               id_subfields={'batch_size': batch_size, #'_step': 499.0,
               'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'SGD',
               'eta_schedule': schedule, 'dataset_name': dataset_name},
               x_col=x , y_col=y)
           if proc_df is not None:
               run_times.append(proc_df[y].values.max())
               run_times_max.append(proc_df[y+'75'].values.max())
               run_times_min.append(proc_df[y+'25'].values.max())
               algos.append('SGD')
           else:
               run_times.append(0.)
               run_times_max.append(0.)
               run_times_min.append(0.)
               algos.append('SGD')
               print('missing SGD  ', dataset_name, 'full-batch')

           # Adam
            proc_df = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size, #'_step': 499.0,
                'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adam',
                'eta_schedule': 'constant', 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                run_times.append(proc_df[y].values.max())
                run_times_max.append(proc_df[y+'75'].values.max())
                run_times_min.append(proc_df[y+'25'].values.max())
                algos.append('Adam')
            else:
                run_times.append(0.)
                run_times_max.append(0.)
                run_times_min.append(0.)
                algos.append('Adam')
                print('missing Adam  ', dataset_name, 'full-batch')

           # SLS
           proc_df = format_dataframe(wandb_records,
               id_subfields={'batch_size': batch_size,  #'_step': 499.0,
               'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'LSOpt',
               'eta_schedule': schedule, 'dataset_name': dataset_name},
               x_col=x , y_col=y)
           if proc_df is not None:
               run_times.append(proc_df[y].values.max())
               run_times_max.append(proc_df[y+'75'].values.max())
               run_times_min.append(proc_df[y+'25'].values.max())
               algos.append('SLS')
           else:
               run_times.append(0.)
               run_times_max.append(0.)
               run_times_min.append(0.)
               algos.append('SLS')
               print('missing SLS  ', dataset_name, 'full-batch')

           # FMDopt theoretical
           for m_ in m:
               # create parsed info
               proc_df = format_dataframe(wandb_records,
                   id_subfields={'batch_size': batch_size,
                       'use_optimal_stepsize': 1, #'_step': 499.0,
                       'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m_,
                       'eta_schedule': schedule, 'dataset_name': dataset_name},
                        avg_subfields=['seed'], max_subfields=['c'],
                   x_col=x, y_col=y)
               if proc_df is not None:
                   run_times.append(proc_df[y].values.max())
                   run_times_max.append(proc_df[y+'75'].values.max())
                   run_times_min.append(proc_df[y+'25'].values.max())
                   algos.append('SSO-'+str(m_))
               else:
                   run_times.append(0.)
                   run_times_max.append(0.)
                   run_times_min.append(0.)
                   algos.append('SSO-'+str(m_))

           axs[row][col].barh([_ for _ in range(len(algos))], run_times,
                               align='center', edgecolor = "black",
                               color=[colormap[algo] for algo in algos],
#                                 xerr=[run_times_min, run_times_max]
                             )
           axs[row][col].set_yticks([_ for _ in range(len(algos))], labels=algos)
           axs[row][col].set_title('batch-size: '+str(batch_size), fontsize=18)
           axs[row][col].grid()

       #

       axs[0][-1].set_title('full-batch', fontsize=18)
       axs[row][-1].set_ylabel(dataset_name, fontsize=18)
       axs[row][-1].yaxis.set_label_position("right")

#     plt.subplots_adjust(hspace=1.5)
#     plt.rcParams['figure.dpi'] = 100# 400
   fig.tight_layout()

   # show / save
   plt.savefig('plots/aistats/workshop-plot-'+fig_name+loss+'.pdf', bbox_inches='tight')
   plt.show()


# In[16]:


generate_runtime_figure('MSELoss', 'constant', wandb_records, fig_name='run-times')
