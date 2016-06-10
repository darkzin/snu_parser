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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
    movl    $99, %eax               #   3:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_9                  #   7:     goto   9
    jmp     l_f0_9                  #   8:     goto   9
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  14:     return t4
    jmp     l_f0_exit              

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t3       <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t4       <bool> %ebp-62 ]
    #    -63(%ebp)   1  [ $t5       <char> %ebp-63 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 12 of <array 70 of <array 24 of <array 96 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 90 of <array 98 of <array 23 of <array 66 of <array 45 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]
    #    -81(%ebp)   1  [ $v6       <char> %ebp-81 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $99, %eax               #   2:     if     99 # t3 goto 2_while_body
    movzbl  -61(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $49184, %eax            #   6:     if     49184 < 46793 goto 6_while_body
    movl    $46793, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
    movl    $6636, %eax             #  11:     if     6636 >= 46288 goto 9_if_true
    movl    $46288, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  12:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  14:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    call    dummyProcedure          #  19:     call   dummyProcedure
    jmp     l_f1_exit              
    movl    $100, %eax              #  21:     if     100 >= 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_19                
    jmp     l_f1_20                 #  22:     goto   20
l_f1_19:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f1_21                 #  25:     goto   21
l_f1_20:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -62(%ebp)         
l_f1_21:
    movzbl  -62(%ebp), %eax         #  29:     assign v5 <- t4
    movb    %al, 20(%ebp)          
    call    dummyCHARfunc           #  30:     call   t5 <- dummyCHARfunc
    movb    %al, -63(%ebp)         
l_f1_25_while_cond:
    movl    $46787, %eax            #  32:     if     46787 >= 75945 goto 26_while_body
    movl    $75945, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_26_while_body     
    jmp     l_f1_24                 #  33:     goto   24
l_f1_26_while_body:
    jmp     l_f1_25_while_cond      #  35:     goto   25_while_cond
l_f1_24:
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  39:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $90585, %eax            #  40:     mul    t7 <- 90585, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  41:     add    t8 <- t7, 35794
    movl    $35794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  44:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  45:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  46:     add    t11 <- t10, 86783
    movl    $86783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  47:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  48:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  49:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  50:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  51:     add    t14 <- t13, 59010
    movl    $59010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  53:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  54:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  55:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  56:     add    t17 <- t16, 11663
    movl    $11663, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  57:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  58:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  59:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  60:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  61:     add    t21 <- v4, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  62:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_30_while_cond:
    movl    $68378, %eax            #  64:     if     68378 < 72463 goto 31_while_body
    movl    $72463, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_31_while_body     
    jmp     l_f1_29                 #  65:     goto   29
l_f1_31_while_body:
    jmp     l_f1_30_while_cond      #  67:     goto   30_while_cond
l_f1_29:
    jmp     l_f1_13                 #  69:     goto   13
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    movl    $0, %eax                #   3:     assign v2 <- 0
    movb    %al, -16(%ebp)         
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     assign v3 <- t3
    movb    %al, -17(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_14                 #   8:     goto   14
    jmp     l_f2_15                 #   9:     goto   15
l_f2_14:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  12:     goto   16
l_f2_15:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  17:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     if     t5 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_10                 #  19:     goto   10
l_f2_13:
    jmp     l_f2_10                 #  21:     goto   10
    jmp     l_f2_11_while_cond      #  22:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    movl    $48602, %eax            #   0:     if     48602 >= 77771 goto 1_if_true
    movl    $77771, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $32657, %eax            #   7:     assign v0 <- 32657
    movl    %eax, v0               
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  11:     if     100 <= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_9_if_true:
    movl    $76331, %eax            #  14:     assign v0 <- 76331
    movl    %eax, v0               
    movl    $0, %eax                #  15:     if     0 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  16:     goto   15
l_test_14:
    movl    $1, %eax                #  18:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_16               #  19:     goto   16
l_test_15:
    movl    $0, %eax                #  21:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_16:
    movzbl  -13(%ebp), %eax         #  23:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_8                #  25:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_20               #  28:     goto   20
    jmp     l_test_20               #  29:     goto   20
l_test_20:
    movl    $1, %eax                #  31:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_22               #  32:     goto   22
    movl    $0, %eax                #  33:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_22:
    movzbl  -14(%ebp), %eax         #  35:     assign v1 <- t1
    movb    %al, v1                
l_test_29_while_cond:
    jmp     l_test_exit            
    jmp     l_test_29_while_cond    #  38:     goto   29_while_cond
    jmp     l_test_35_if_true       #  39:     goto   35_if_true
l_test_35_if_true:
    movl    $98, %eax               #  41:     if     98 # 98 goto 41_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_41_if_true      
    jmp     l_test_42_if_false      #  42:     goto   42_if_false
l_test_41_if_true:
    jmp     l_test_40               #  44:     goto   40
l_test_42_if_false:
l_test_40:
    jmp     l_test_34               #  47:     goto   34
l_test_34:
    call    dummyINTfunc            #  49:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
