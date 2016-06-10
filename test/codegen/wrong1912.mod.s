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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movl    $1, %eax                #   0:     if     1 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_5                  #   3:     goto   5
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t4
    movb    %al, -21(%ebp)         
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  15:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_14_while_cond:
    movl    $97, %eax               #  17:     if     97 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_while_body:
    jmp     l_f0_17                 #  20:     goto   17
l_f0_17:
    movl    $62441, %eax            #  22:     return 62441
    jmp     l_f0_exit              
l_f0_22_while_cond:
    movl    $100, %eax              #  24:     if     100 >= 100 goto 23_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_23_while_body     
    jmp     l_f0_21                 #  25:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  27:     goto   22_while_cond
l_f0_21:
    movl    $42250, %eax            #  29:     assign v2 <- 42250
    movl    %eax, -28(%ebp)        
    jmp     l_f0_14_while_cond      #  30:     goto   14_while_cond
l_f0_13:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 60 of <array 30 of <array 78 of <array 43 of <bool>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -21(%ebp)         
    movl    $835, %eax              #   1:     assign v4 <- 835
    movl    %eax, -28(%ebp)        
    movl    $1496, %eax             #   2:     sub    t4 <- 1496, 90773
    movl    $90773, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t5 <- t4, 22473
    movl    $22473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 86 of <array 60 of <array 30 of <array 78 of <array 43 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 86 of <array 60 of <array 30 of <array 78 of <array 43 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #   -519199264(%ebp)  519199224  [ $v1       <array 86 of <array 60 of <array 30 of <array 78 of <array 43 of <bool>>>>>> %ebp-519199264 ]
    #   -519199265(%ebp)   1  [ $v2       <char> %ebp-519199265 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $519199256, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $129799814, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-519199264(%ebp)     # local array 'v1': 5 dimensions
    movl    $86,-519199260(%ebp)    #   dimension 1: 86 elements
    movl    $60,-519199256(%ebp)    #   dimension 2: 60 elements
    movl    $30,-519199252(%ebp)    #   dimension 3: 30 elements
    movl    $78,-519199248(%ebp)    #   dimension 4: 78 elements
    movl    $43,-519199244(%ebp)    #   dimension 5: 43 elements

    # function body
    leal    -519199264(%ebp), %eax  #   0:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  1 <- t4
    pushl   %eax                   
    movl    $9390, %eax             #   2:     if     9390 <= 97533 goto 1
    movl    $97533, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  11:     call   t6 <- f1
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    leal    -519199264(%ebp), %eax  #  12:     &()    t7 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     param  1 <- t7
    pushl   %eax                   
    movl    $21424, %eax            #  14:     if     21424 = 32844 goto 6
    movl    $32844, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #  15:     goto   7
l_f2_6:
    movl    $1, %eax                #  17:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_8                  #  18:     goto   8
l_f2_7:
    movl    $0, %eax                #  20:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_8:
    movzbl  -33(%ebp), %eax         #  22:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  23:     call   t9 <- f1
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
l_f2_11_while_cond:
    jmp     l_f2_10                 #  25:     goto   10
    jmp     l_f2_10                 #  26:     goto   10
    movl    $97, %eax               #  27:     assign v2 <- 97
    movb    %al, -519199265(%ebp)  
    movl    $97, %eax               #  28:     if     97 < 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  29:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  31:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_21                 #  34:     goto   21
l_f2_21:
    jmp     l_f2_exit              
    movl    $35252, %eax            #  37:     param  0 <- 35252
    pushl   %eax                   
    call    WriteInt                #  38:     call   WriteInt
    addl    $4, %esp               
l_f2_27_while_cond:
    movl    $1, %eax                #  40:     if     1 = 1 goto 28_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_28_while_body     
    jmp     l_f2_26                 #  41:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  43:     goto   27_while_cond
l_f2_26:
    call    dummyCHARfunc           #  45:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  46:     assign v2 <- 98
    movb    %al, -519199265(%ebp)  
    jmp     l_f2_11_while_cond      #  47:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $519199256, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    jmp     l_test_5                #   1:     goto   5
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t0 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $88524, %eax            #  16:     assign v0 <- 88524
    movl    %eax, v0               
    call    f2                      #  17:     call   f2
    jmp     l_test_11               #  18:     goto   11
l_test_11:
    movl    $77439, %eax            #  20:     mul    t1 <- 77439, 63869
    movl    $63869, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     div    t2 <- t1, 64624
    movl    $64624, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     sub    t3 <- t2, 34752
    movl    $34752, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     assign v0 <- t3
    movl    %eax, v0               
    movl    $99, %eax               #  24:     if     99 <= 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  25:     goto   18_if_false
l_test_17_if_true:
    call    f2                      #  27:     call   f2
    jmp     l_test_16               #  28:     goto   16
l_test_18_if_false:
l_test_16:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
