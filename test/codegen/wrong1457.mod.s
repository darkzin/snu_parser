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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 54 of <array 81 of <array 74 of <array 91 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 85 of <array 48 of <array 84 of <array 23 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $32344, %eax            #   4:     if     32344 <= 14132 goto 6_while_body
    movl    $14132, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
l_f0_9_while_cond:
    movl    $100, %eax              #  10:     if     100 >= 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $57660, %eax            #  18:     sub    t0 <- 57660, 86158
    movl    $86158, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     assign v2 <- t0
    movl    %eax, -24(%ebp)        
    jmp     l_f0_15_if_false        #  20:     goto   15_if_false
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_19_if_false        #  22:     goto   19_if_false
    jmp     l_f0_17                 #  23:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_13                 #  26:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 68 of <array 72 of <array 60 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 67 of <array 40 of <array 72 of <array 12 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 29 of <array 67 of <array 40 of <array 72 of <array 12 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 57 of <array 68 of <array 72 of <array 60 of <array 24 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #   -401863732(%ebp)  401863704  [ $v2       <array 57 of <array 68 of <array 72 of <array 60 of <array 24 of <bool>>>>>> %ebp-401863732 ]
    #   -469013836(%ebp)  67150104  [ $v3       <array 29 of <array 67 of <array 40 of <array 72 of <array 12 of <bool>>>>>> %ebp-469013836 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $469013824, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $117253456, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-401863732(%ebp)     # local array 'v2': 5 dimensions
    movl    $57,-401863728(%ebp)    #   dimension 1: 57 elements
    movl    $68,-401863724(%ebp)    #   dimension 2: 68 elements
    movl    $72,-401863720(%ebp)    #   dimension 3: 72 elements
    movl    $60,-401863716(%ebp)    #   dimension 4: 60 elements
    movl    $24,-401863712(%ebp)    #   dimension 5: 24 elements
    movl    $5,-469013836(%ebp)     # local array 'v3': 5 dimensions
    movl    $29,-469013832(%ebp)    #   dimension 1: 29 elements
    movl    $67,-469013828(%ebp)    #   dimension 2: 67 elements
    movl    $40,-469013824(%ebp)    #   dimension 3: 40 elements
    movl    $72,-469013820(%ebp)    #   dimension 4: 72 elements
    movl    $12,-469013816(%ebp)    #   dimension 5: 12 elements

    # function body
    jmp     l_f2_exit              
    movl    $68789, %eax            #   1:     assign v1 <- 68789
    movl    %eax, -28(%ebp)        
    leal    -469013836(%ebp), %eax  #   2:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t0
    pushl   %eax                   
    leal    -401863732(%ebp), %eax  #   4:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   6:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $469013824, %esp        # remove locals
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
    movl    $97, %eax               #   0:     if     97 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
l_test_8_while_cond:
    movl    $99, %eax               #   8:     if     99 = 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   9:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  11:     goto   8_while_cond
l_test_7:
l_test_12_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  15:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
l_test_11:
    call    WriteLn                 #  19:     call   WriteLn
    jmp     l_test_0                #  20:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
