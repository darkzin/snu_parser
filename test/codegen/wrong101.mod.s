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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t16      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t17      <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 2 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 3 of <array 5 of <array 2 of <array 3 of <int>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $58422, %eax            #   1:     if     58422 > 9972 goto 2_while_body
    movl    $9972, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $1, %eax                #   4:     return 1
    jmp     l_f0_exit              
    movl    $1, %eax                #   5:     if     1 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $54228, %eax            #  14:     mul    t1 <- 54228, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t2 <- t1, 41889
    movl    $41889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  19:     mul    t4 <- t2, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  20:     add    t5 <- t4, 51987
    movl    $51987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  25:     add    t8 <- t7, 74689
    movl    $74689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  29:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t11 <- t10, 90400
    movl    $90400, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     mul    t12 <- t11, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t13 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t15 <- v2, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $21998, %eax            #  36:     assign @t15 <- 21998
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $99, %eax               #  37:     assign v3 <- 99
    movb    %al, -81(%ebp)         
    jmp     l_f0_1_while_cond       #  38:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_12                 #  40:     goto   12
    jmp     l_f0_12                 #  41:     goto   12
    jmp     l_f0_13                 #  42:     goto   13
l_f0_12:
    movl    $1, %eax                #  44:     assign t16 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_14                 #  45:     goto   14
l_f0_13:
    movl    $0, %eax                #  47:     assign t16 <- 0
    movb    %al, -45(%ebp)         
l_f0_14:
    movzbl  -45(%ebp), %eax         #  49:     return t16
    jmp     l_f0_exit              
    movl    $100, %eax              #  50:     if     100 > 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  51:     goto   21_if_false
l_f0_20_if_true:
    call    WriteLn                 #  53:     call   WriteLn
    movl    $1, %eax                #  54:     return 1
    jmp     l_f0_exit              
    movl    $6223, %eax             #  55:     assign v0 <- 6223
    movl    %eax, 8(%ebp)          
    movl    $43135, %eax            #  56:     if     43135 < 44206 goto 27
    movl    $44206, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_27                
    jmp     l_f0_28                 #  57:     goto   28
l_f0_27:
    movl    $1, %eax                #  59:     assign t17 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f0_29                 #  60:     goto   29
l_f0_28:
    movl    $0, %eax                #  62:     assign t17 <- 0
    movb    %al, -46(%ebp)         
l_f0_29:
    movzbl  -46(%ebp), %eax         #  64:     return t17
    jmp     l_f0_exit              
    jmp     l_f0_19                 #  65:     goto   19
l_f0_21_if_false:
l_f0_19:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    movl    $100, %eax              #   1:     if     100 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $98, %eax               #   5:     if     98 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  11:     assign v2 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  14:     return 99
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  16:     return t1
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     if     97 = 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    movl    $10665, %eax            #   5:     return 10665
    jmp     l_f2_exit              
    movl    $47073, %eax            #   6:     return 47073
    jmp     l_f2_exit              
l_f2_10_while_cond:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t0 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_14_while_cond:
l_f2_17_while_cond:
    movl    $99, %eax               #  19:     if     99 <= 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_18_while_body     
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  22:     goto   17_while_cond
l_f2_16:
l_f2_21_while_cond:
    jmp     l_f2_20                 #  25:     goto   20
    jmp     l_f2_21_while_cond      #  26:     goto   21_while_cond
l_f2_20:
    movl    $100, %eax              #  28:     if     100 < 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  29:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  31:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_14_while_cond      #  34:     goto   14_while_cond
    movl    $0, %eax                #  35:     if     0 # 0 goto 28_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_28_if_true        
    jmp     l_f2_29_if_false        #  36:     goto   29_if_false
l_f2_28_if_true:
    jmp     l_f2_33_if_false        #  38:     goto   33_if_false
    jmp     l_f2_31                 #  39:     goto   31
l_f2_33_if_false:
l_f2_31:
l_f2_35_while_cond:
    jmp     l_f2_34                 #  43:     goto   34
    jmp     l_f2_39_if_false        #  44:     goto   39_if_false
    jmp     l_f2_37                 #  45:     goto   37
l_f2_39_if_false:
l_f2_37:
    jmp     l_f2_35_while_cond      #  48:     goto   35_while_cond
l_f2_34:
    jmp     l_f2_27                 #  50:     goto   27
l_f2_29_if_false:
l_f2_27:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_3_while_cond     #   3:     goto   3_while_cond

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
