#### 1. Training of temporal evaluation module


```
python main.py --module TEM --mode train
```

We also provide trained TEM model in `./checkpoint/`

#### 2. Testing of temporal evaluation module

```
python main.py --module TEM --mode inference
```

#### 3. Proposals generation and BSP feature generation

```
python main.py --module PGM
```

#### 4. Training of proposal evaluation module

```
python main.py --module PEM --mode train
```

We also provide trained PEM model in `./checkpoint` .

#### 6. Testing of proposal evaluation module

```
python main.py --module PEM --mode inference --pem_batch_size 1
```

#### 7. Post processing and generate final results

```
python main.py --module Post_processing
```

#### 8. Eval the performance of proposals

```
python main.py --module Evaluation
```

You can find evaluation figure in `./output`

You can also simply run all above commands using:
```
sh tools/run.sh
```