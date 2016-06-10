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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 2 of <array 3 of <array 3 of <array 1 of <int>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #   7:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t6 >= t7 goto 10_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  15:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  17:     goto   9_while_cond
l_f0_8:
    call    dummyProcedure          #  19:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 2 of <array 3 of <array 3 of <array 1 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 10 of <array 4 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 3 of <array 2 of <array 1 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]
    #   -416(%ebp)  384  [ $v5       <array 5 of <array 2 of <array 3 of <array 3 of <array 1 of <int>>>>>> %ebp-416 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $404, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $101, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-416(%ebp)           # local array 'v5': 5 dimensions
    movl    $5,-412(%ebp)           #   dimension 1: 5 elements
    movl    $2,-408(%ebp)           #   dimension 2: 2 elements
    movl    $3,-404(%ebp)           #   dimension 3: 3 elements
    movl    $3,-400(%ebp)           #   dimension 4: 3 elements
    movl    $1,-396(%ebp)           #   dimension 5: 1 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #   1:     assign v4 <- t5
    movb    %al, -30(%ebp)         
    leal    -416(%ebp), %eax        #   2:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t6
    pushl   %eax                   
    movl    $0, %eax                #   4:     param  1 <- 0
    pushl   %eax                   
    movl    $63195, %eax            #   5:     div    t7 <- 63195, 51949
    movl    $51949, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     div    t8 <- t7, 3563
    movl    $3563, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $93122, %eax            #   7:     if     93122 >= t8 goto 7
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $1, %eax                #  10:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_9:
    movzbl  -29(%ebp), %eax         #  15:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  16:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     if     t10 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_2                  #  18:     goto   2
l_f1_2:
    movl    $1, %eax                #  20:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #  21:     goto   4
    movl    $0, %eax                #  22:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  24:     assign v4 <- t11
    movb    %al, -30(%ebp)         
    jmp     l_f1_12                 #  25:     goto   12
    jmp     l_f1_12                 #  26:     goto   12
    jmp     l_f1_13                 #  27:     goto   13
l_f1_12:
    movl    $1, %eax                #  29:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  30:     goto   14
l_f1_13:
    movl    $0, %eax                #  32:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f1_14:
    movzbl  -15(%ebp), %eax         #  34:     assign v4 <- t12
    movb    %al, -30(%ebp)         

l_f1_exit:
    # epilogue
    addl    $404, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]

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
    movl    $95411, %eax            #   0:     sub    t5 <- 95411, 47712
    movl    $47712, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    movl    $99, %eax               #   2:     if     99 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $20017, %eax            #   5:     return 20017
    jmp     l_f2_exit              
    jmp     l_f2_6                  #   6:     goto   6
l_f2_6:
    movl    $6186, %eax             #   8:     return 6186
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $97, %eax               #  12:     if     97 > 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  15:     goto   10
l_f2_12_if_false:
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    movl    $57132, %eax            #   5:     if     57132 = 69578 goto 4_if_true
    movl    $69578, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   6:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   8:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #  13:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  14:     if     99 >= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  15:     goto   10_if_false
l_test_9_if_true:
    movl    $59989, %eax            #  17:     assign v0 <- 59989
    movl    %eax, v0               
    jmp     l_test_8                #  18:     goto   8
l_test_10_if_false:
l_test_8:
l_test_14_while_cond:
    jmp     l_test_18               #  22:     goto   18
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_19               #  24:     goto   19
l_test_18:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_19:
    jmp     l_test_22               #  28:     goto   22
    movl    $1, %eax                #  29:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_23               #  30:     goto   23
l_test_22:
    movl    $0, %eax                #  32:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_23:
    movzbl  -21(%ebp), %eax         #  34:     if     t2 # t3 goto 15_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  35:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  37:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  40:     call   t4 <- dummyCHARfunc
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
