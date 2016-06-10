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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t18      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 97 of <array 82 of <array 9 of <array 19 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -34(%ebp)   1  [ $v5       <bool> %ebp-34 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_7_while_cond:
    movl    $15983, %eax            #   7:     if     15983 = 59021 goto 8_while_body
    movl    $59021, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_11                 #  10:     goto   11
    jmp     l_f0_12                 #  11:     goto   12
l_f0_11:
    movl    $1, %eax                #  13:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $0, %eax                #  16:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f0_13:
    movzbl  -13(%ebp), %eax         #  18:     assign v5 <- t13
    movb    %al, -34(%ebp)         
    jmp     l_f0_7_while_cond       #  19:     goto   7_while_cond
l_f0_6:
    movl    $15119, %eax            #  21:     add    t14 <- 15119, 28839
    movl    $28839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $99738, %eax            #  22:     sub    t15 <- 99738, 31117
    movl    $31117, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t16 <- t15, 30807
    movl    $30807, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     sub    t17 <- t16, 85633
    movl    $85633, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  25:     if     t14 <= t17 goto 16
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_16                
    jmp     l_f0_17                 #  26:     goto   17
l_f0_16:
    movl    $1, %eax                #  28:     assign t18 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_18                 #  29:     goto   18
l_f0_17:
    movl    $0, %eax                #  31:     assign t18 <- 0
    movb    %al, -33(%ebp)         
l_f0_18:
    movzbl  -33(%ebp), %eax         #  33:     return t18
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t31      <char> %ebp-81 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 64 of <array 49 of <array 74 of <array 43 of <bool>>>>>>> %ebp+12 ]
    #    -82(%ebp)   1  [ $v3       <bool> %ebp-82 ]

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
    jmp     l_f1_5                  #   0:     goto   5
    jmp     l_f1_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $0, %eax                #   5:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $0, %eax                #   7:     if     0 = t13 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   8:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $45664, %eax            #  13:     if     45664 >= 58748 goto 12_if_true
    movl    $58748, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  14:     goto   13_if_false
l_f1_12_if_true:
    movl    $95869, %eax            #  16:     if     95869 >= 80445 goto 16_if_true
    movl    $80445, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  17:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_exit              
    movl    $0, %eax                #  23:     assign v3 <- 0
    movb    %al, -82(%ebp)         
    jmp     l_f1_exit              
    movl    $99, %eax               #  25:     if     99 <= 99 goto 23
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_23                
    jmp     l_f1_24                 #  26:     goto   24
l_f1_23:
    movl    $1, %eax                #  28:     assign t14 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_25                 #  29:     goto   25
l_f1_24:
    movl    $0, %eax                #  31:     assign t14 <- 0
    movb    %al, -14(%ebp)         
l_f1_25:
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $6243, %eax             #  36:     mul    t16 <- 6243, t15
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     add    t17 <- t16, 83002
    movl    $83002, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  41:     mul    t19 <- t17, t18
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     add    t20 <- t19, 34339
    movl    $34339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t22 <- t20, t21
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  47:     add    t23 <- t22, 79536
    movl    $79536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  51:     mul    t25 <- t23, t24
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  52:     add    t26 <- t25, 16949
    movl    $16949, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  53:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  55:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  56:     add    t29 <- t27, t28
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  57:     add    t30 <- v2, t29
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  58:     assign @t30 <- t14
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_11                 #  59:     goto   11
l_f1_13_if_false:
l_f1_11:
    call    dummyCHARfunc           #  62:     call   t31 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  63:     assign v1 <- t31
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 15 of <array 61 of <array 6 of <array 100 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
    movl    $0, %eax                #   3:     assign v3 <- 0
    movb    %al, -21(%ebp)         
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   9:     if     98 <= t13 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #  10:     goto   10
l_f2_9:
    movl    $1, %eax                #  12:     assign t14 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  13:     goto   11
l_f2_10:
    movl    $0, %eax                #  15:     assign t14 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  17:     return t14
    jmp     l_f2_exit              
    call    dummyINTfunc            #  18:     call   t15 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $31293, %eax            #   0:     add    t0 <- 31293, 62522
    movl    $62522, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_exit            
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $83408, %eax            #   4:     sub    t2 <- 83408, 36131
    movl    $36131, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     add    t3 <- t2, 6375
    movl    $6375, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     sub    t4 <- t3, 3201
    movl    $3201, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     sub    t5 <- t4, 5398
    movl    $5398, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     sub    t6 <- t5, 41355
    movl    $41355, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     sub    t7 <- t6, 20745
    movl    $20745, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     add    t8 <- t7, 21630
    movl    $21630, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     sub    t9 <- t8, 54411
    movl    $54411, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  12:     sub    t10 <- t9, 99167
    movl    $99167, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t11 <- t10, 82843
    movl    $82843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     sub    t12 <- t11, 5391
    movl    $5391, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     assign v0 <- t12
    movl    %eax, v0               
    jmp     l_test_6_if_false       #  16:     goto   6_if_false
    jmp     l_test_4                #  17:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $15248, %eax            #  20:     if     15248 >= 29786 goto 10_if_true
    movl    $29786, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #  21:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
    movl    $66356, %eax            #  26:     if     66356 >= 86850 goto 18_if_true
    movl    $86850, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  29:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_9                #  32:     goto   9
l_test_11_if_false:
l_test_9:

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
