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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
    jmp     l_f0_3                  #   0:     goto   3
    jmp     l_f0_3                  #   1:     goto   3
l_f0_3:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    movl    $99, %eax               #   5:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #   6:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     assign v5 <- t7
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 17 of <array 44 of <array 43 of <array 16 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 33 of <array 89 of <array 66 of <array 72 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 29 of <array 67 of <array 55 of <array 83 of <array 96 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 90 of <array 27 of <array 43 of <array 70 of <array 23 of <bool>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $70136, %eax            #   1:     if     70136 < 13884 goto 2_if_true
    movl    $13884, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $99411, %eax            #   4:     return 99411
    jmp     l_f1_exit              
    movl    $50513, %eax            #   5:     if     50513 = 32213 goto 7_if_true
    movl    $32213, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    jmp     l_f1_10                 #   9:     goto   10
    jmp     l_f1_11_while_cond      #  10:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_1                  #  15:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_14_while_cond:
    movl    $92316, %eax            #  19:     div    t8 <- 92316, 65354
    movl    $65354, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     div    t9 <- t8, 14416
    movl    $14416, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     if     t9 # 63523 goto 15_while_body
    movl    $63523, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  22:     goto   13
l_f1_15_while_body:
    call    WriteLn                 #  24:     call   WriteLn
    call    ReadInt                 #  25:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_21_if_false        #  26:     goto   21_if_false
    jmp     l_f1_19                 #  27:     goto   19
l_f1_21_if_false:
l_f1_19:
    jmp     l_f1_14_while_cond      #  30:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 23 of <array 14 of <array 55 of <array 15 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
    movl    $22020, %eax            #   1:     div    t7 <- 22020, 96816
    movl    $96816, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t7 < 5963 goto 2
    movl    $5963, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v2 <- t8
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   2:     if     98 < t1 goto 2
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_4:
    movzbl  -18(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $0, %eax                #  12:     param  3 <- 0
    pushl   %eax                   
    movl    $48622, %eax            #  13:     if     48622 = 11831 goto 8
    movl    $11831, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8               
    jmp     l_test_9                #  14:     goto   9
l_test_8:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_10               #  17:     goto   10
l_test_9:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_10:
    movzbl  -19(%ebp), %eax         #  21:     param  2 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  22:     param  1 <- 99
    pushl   %eax                   
    jmp     l_test_17               #  23:     goto   17
    jmp     l_test_12               #  24:     goto   12
l_test_17:
    jmp     l_test_12               #  26:     goto   12
l_test_12:
    movl    $1, %eax                #  28:     assign t4 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_test_14               #  29:     goto   14
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -20(%ebp)         
l_test_14:
    movzbl  -20(%ebp), %eax         #  32:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  33:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #  34:     call   t6 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
