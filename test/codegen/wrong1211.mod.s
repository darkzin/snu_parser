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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    movl    $66873, %eax            #   2:     sub    t1 <- 66873, 34522
    movl    $34522, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 # 10428 goto 3
    movl    $10428, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_3                 
    jmp     l_f0_4                  #   4:     goto   4
l_f0_3:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_5                  #   7:     goto   5
l_f0_4:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f0_5:
    movzbl  -21(%ebp), %eax         #  11:     assign v0 <- t2
    movb    %al, -22(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    movl    $21446, %eax            #   0:     add    t0 <- 21446, 20196
    movl    $20196, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
l_f1_4_while_body:
l_f1_9_while_cond:
    movl    $97, %eax               #   7:     if     97 > 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_10_while_body     
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
l_f1_8:
    movl    $4047, %eax             #  12:     if     4047 = 50818 goto 13_if_true
    movl    $50818, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  13:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  15:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_exit              
    movl    $55452, %eax            #  19:     if     55452 <= 54647 goto 18_if_true
    movl    $54647, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  20:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_if_false:
l_f1_17:
    call    dummyCHARfunc           #  25:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_f1_3_while_cond       #  26:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 26 of <array 28 of <array 23 of <array 47 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 88 of <array 95 of <array 35 of <array 89 of <bool>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $2671, %eax             #   0:     assign v0 <- 2671
    movl    %eax, 8(%ebp)          
    jmp     l_f2_6                  #   1:     goto   6
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   3:     goto   7
l_f2_6:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movl    $0, %eax                #   7:     if     0 # t0 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   8:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $48559, %eax            #  13:     assign v0 <- 48559
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  14:     return 100
    jmp     l_f2_exit              
    movl    $1, %eax                #  15:     assign v3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  16:     goto   10
l_f2_10:

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
    movl    $83511, %eax            #   1:     assign v0 <- 83511
    movl    %eax, v0               
    jmp     l_test_exit            

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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
