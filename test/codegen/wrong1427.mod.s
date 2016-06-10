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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f0_1                  #   0:     goto   1
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   2:     if     t5 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f0_3:
    movzbl  -16(%ebp), %eax         #  10:     return t6
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  16:     if     t7 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  17:     goto   5
l_f0_7_while_body:
    call    ReadInt                 #  19:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f0_6_while_cond       #  20:     goto   6_while_cond
l_f0_5:
    movl    $100, %eax              #  22:     if     100 = 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_20                 #  23:     goto   20
l_f0_19:
    movl    $1, %eax                #  25:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_21                 #  26:     goto   21
l_f0_20:
    movl    $0, %eax                #  28:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_21:
    jmp     l_f0_23                 #  30:     goto   23
l_f0_23:
    movl    $1, %eax                #  32:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_25                 #  33:     goto   25
    movl    $0, %eax                #  34:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_25:
    movzbl  -25(%ebp), %eax         #  36:     if     t9 = t10 goto 15
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_15                
    jmp     l_f0_16                 #  37:     goto   16
l_f0_15:
    movl    $1, %eax                #  39:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_17                 #  40:     goto   17
l_f0_16:
    movl    $0, %eax                #  42:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_17:
    movzbl  -14(%ebp), %eax         #  44:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $v0       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $v1       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t6 <- t5, 71763
    movl    $71763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     add    t7 <- t6, 60570
    movl    $60570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     add    t8 <- t7, 16399
    movl    $16399, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t9 <- t8, 26482
    movl    $26482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     assign v0 <- t9
    movl    %eax, -48(%ebp)        
    movl    $74727, %eax            #   6:     div    t10 <- 74727, 76005
    movl    $76005, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 96563
    movl    $96563, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t11
    jmp     l_f1_exit              
    movl    $35026, %eax            #   9:     if     35026 < 6410 goto 3_if_true
    movl    $6410, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  10:     goto   4_if_false
l_f1_3_if_true:
    movl    $98, %eax               #  12:     if     98 = 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $1, %eax                #  15:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
l_f1_8:
    movl    $0, %eax                #  18:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_9:
    movzbl  -21(%ebp), %eax         #  20:     assign v1 <- t12
    movb    %al, -49(%ebp)         
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  22:     goto   12_while_cond
    jmp     l_f1_2                  #  23:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 # 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f2_exit              
    call    dummyINTfunc            #   5:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    f1                      #   6:     call   t7 <- f1
    movl    %eax, -24(%ebp)        
    movl    $100, %eax              #   7:     if     100 <= 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_11:
    movzbl  -25(%ebp), %eax         #  15:     assign v0 <- t8
    movb    %al, -26(%ebp)         
    jmp     l_f2_1                  #  16:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $100, %eax              #  19:     return 100
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_6_while_cond:
    call    dummyINTfunc            #   5:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
    movl    $98, %eax               #   7:     if     98 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
l_test_10_if_true:
    movl    $99, %eax               #  10:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyINTfunc            #  15:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  16:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  17:     if     100 < t2 goto 17
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_17              
    jmp     l_test_18               #  18:     goto   18
l_test_17:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_19               #  21:     goto   19
l_test_18:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_19:
    movzbl  -22(%ebp), %eax         #  25:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  26:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -23(%ebp)         

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
