##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 88 of <array 19 of <array 27 of <array 14 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 61 of <array 90 of <array 84 of <array 91 of <bool>>>>>>> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $76768, %eax            #   0:     if     76768 # 54936 goto 1_if_true
    movl    $54936, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $100, %eax              #   4:     if     100 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    movl    $1, %eax                #   9:     assign v2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_18_while_cond:
    jmp     l_f0_17                 #  16:     goto   17
    jmp     l_f0_18_while_cond      #  17:     goto   18_while_cond
l_f0_17:
l_f0_21_while_cond:
    movl    $100, %eax              #  20:     if     100 = 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_22_while_body     
    jmp     l_f0_20                 #  21:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  23:     goto   21_while_cond
l_f0_20:
    call    dummyProcedure          #  25:     call   dummyProcedure
    movl    $60877, %eax            #  26:     if     60877 = 2788 goto 26_if_true
    movl    $2788, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  27:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  29:     goto   25
l_f0_27_if_false:
l_f0_25:
l_f0_30_while_cond:
    movl    $11703, %eax            #  33:     if     11703 = 23807 goto 31_while_body
    movl    $23807, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_31_while_body     
    jmp     l_f0_29                 #  34:     goto   29
l_f0_31_while_body:
    jmp     l_f0_30_while_cond      #  36:     goto   30_while_cond
l_f0_29:
    jmp     l_f0_10_while_cond      #  38:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_35_if_false        #  40:     goto   35_if_false
    jmp     l_f0_35_if_false        #  41:     goto   35_if_false
    jmp     l_f0_33                 #  42:     goto   33
l_f0_35_if_false:
l_f0_33:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t21      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t22      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 22 of <array 72 of <array 5 of <array 57 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 86 of <array 4 of <array 82 of <array 41 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $12811, %eax            #   0:     sub    t2 <- 12811, 40671
    movl    $40671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     sub    t3 <- t2, 48146
    movl    $48146, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   2:     sub    t4 <- t3, 53754
    movl    $53754, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $62525, %eax            #   6:     mul    t6 <- 62525, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   7:     add    t7 <- t6, 19169
    movl    $19169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  11:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  12:     add    t10 <- t9, 76045
    movl    $76045, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t13 <- t12, 58950
    movl    $58950, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t16 <- t15, 9076
    movl    $9076, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -72(%ebp), %eax         #  28:     assign @t20 <- t4
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  29:     call   t21 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $99, %eax               #  30:     if     99 < t21 goto 2_if_true
    movzbl  -61(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #  31:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $72382, %eax            #  34:     if     72382 > 14635 goto 7_while_body
    movl    $14635, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  35:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  37:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #  39:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_10                 #  42:     goto   10
    jmp     l_f1_10                 #  43:     goto   10
l_f1_10:
    movl    $1, %eax                #  45:     assign t22 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f1_12                 #  46:     goto   12
    movl    $0, %eax                #  47:     assign t22 <- 0
    movb    %al, -62(%ebp)         
l_f1_12:
    movzbl  -62(%ebp), %eax         #  49:     return t22
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t2
    movb    %al, -21(%ebp)         
    movl    $92407, %eax            #   2:     mul    t3 <- 92407, 27362
    movl    $27362, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v0 <- t3
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $76938, %eax            #   6:     if     76938 < 86947 goto 9_if_true
    movl    $86947, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   9:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_3                #  12:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
    movl    $99, %eax               #  16:     if     99 > 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_21_while_cond:
    jmp     l_test_20               #  22:     goto   20
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
l_test_20:
    jmp     l_test_13               #  25:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
