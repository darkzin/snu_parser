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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -88(%ebp)   4  [ $v2       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $76809, %eax            #   5:     mul    t5 <- 76809, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   6:     add    t6 <- t5, 5904
    movl    $5904, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  10:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t9 <- t8, 64352
    movl    $64352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 78598
    movl    $78598, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 31514
    movl    $31514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $30118, %eax            #  27:     assign @t19 <- 30118
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  28:     return 100
    jmp     l_f0_exit              
    movl    $100, %eax              #  29:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  30:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_0                  #  31:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    call    dummyBOOLfunc           #  35:     call   t20 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movl    $0, %eax                #  36:     if     0 = t20 goto 9_while_body
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #  37:     goto   7
l_f0_9_while_body:
    movl    $98, %eax               #  39:     assign v3 <- 98
    movb    %al, -89(%ebp)         
    jmp     l_f0_8_while_cond       #  40:     goto   8_while_cond
l_f0_7:
    movl    $100, %eax              #  42:     return 100
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 8 of <array 8 of <array 10 of <array 5 of <int>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   3:     goto   5_while_cond
    movl    $92254, %eax            #   4:     if     92254 # 82968 goto 8_if_true
    movl    $82968, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   5:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #   7:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $97, %eax               #  10:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
    jmp     l_f1_18                 #  12:     goto   18
    jmp     l_f1_18                 #  13:     goto   18
    jmp     l_f1_18                 #  14:     goto   18
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_19                 #  16:     goto   19
l_f1_18:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_19:
    jmp     l_f1_24                 #  20:     goto   24
    jmp     l_f1_24                 #  21:     goto   24
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_25                 #  23:     goto   25
l_f1_24:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_25:
    movzbl  -14(%ebp), %eax         #  27:     if     t4 # t5 goto 13
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  28:     goto   14
l_f1_13:
    movl    $1, %eax                #  30:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_15                 #  31:     goto   15
l_f1_14:
    movl    $0, %eax                #  33:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_15:
    movzbl  -16(%ebp), %eax         #  35:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_30                 #  36:     goto   30
    movl    $1, %eax                #  37:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_31                 #  38:     goto   31
l_f1_30:
    movl    $0, %eax                #  40:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_31:
    movzbl  -17(%ebp), %eax         #  42:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t3 < 54865 goto 2_while_body
    movl    $54865, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $0, %eax                #   5:     if     0 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   9:     goto   7
l_f2_6:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  13:     return t4
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_11_if_false        #  16:     goto   11_if_false
    call    dummyProcedure          #  17:     call   dummyProcedure
l_f2_17_while_cond:
    movl    $99, %eax               #  19:     if     99 > 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_18_while_body     
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  22:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_9                  #  24:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $11991, %eax            #  27:     if     11991 < 54769 goto 27
    movl    $54769, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_27                
    jmp     l_f2_22                 #  28:     goto   22
l_f2_27:
    jmp     l_f2_22                 #  30:     goto   22
    jmp     l_f2_22                 #  31:     goto   22
    movl    $1, %eax                #  32:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_23                 #  33:     goto   23
l_f2_22:
    movl    $0, %eax                #  35:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_23:
    movzbl  -18(%ebp), %eax         #  37:     return t5
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $72882, %eax            #   7:     sub    t1 <- 72882, 3421
    movl    $3421, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $87610, %eax            #   8:     if     87610 # t1 goto 8
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  16:     assign v0 <- t2
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
