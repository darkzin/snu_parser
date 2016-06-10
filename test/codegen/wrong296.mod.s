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
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 4 of <array 2 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $82802, %eax            #   1:     add    t8 <- 82802, t7
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     return t8
    jmp     l_f0_exit              
    movl    $58284, %eax            #   3:     div    t9 <- 58284, 19534
    movl    $19534, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     mul    t10 <- t9, 76099
    movl    $76099, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 84914
    movl    $84914, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t11
    jmp     l_f0_exit              
    movl    $44604, %eax            #   7:     div    t12 <- 44604, 13167
    movl    $13167, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t13 <- t12, 29091
    movl    $29091, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $47555, %eax            #   9:     sub    t14 <- 47555, t13
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     return t14
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 7 of <array 1 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 7 of <array 2 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $1, %eax                #   0:     assign v3 <- 1
    movb    %al, 20(%ebp)          
    movl    $31793, %eax            #   1:     if     31793 < 67175 goto 5
    movl    $67175, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v3 <- t7
    movb    %al, 20(%ebp)          
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    movl    $0, %eax                #  12:     if     0 # 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  13:     goto   14
l_f1_13:
    movl    $1, %eax                #  15:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_15                 #  16:     goto   15
l_f1_14:
    movl    $0, %eax                #  18:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_15:
    movzbl  -14(%ebp), %eax         #  20:     assign v3 <- t8
    movb    %al, 20(%ebp)          
    movl    $98, %eax               #  21:     if     98 > 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  22:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_if_false:
l_f1_17:
l_f1_22_while_cond:
    movl    $96642, %eax            #  28:     if     96642 > 67806 goto 23_while_body
    movl    $67806, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_23_while_body     
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    call    dummyProcedure          #  33:     call   dummyProcedure
    jmp     l_f1_28_if_false        #  34:     goto   28_if_false
    jmp     l_f1_26                 #  35:     goto   26
l_f1_28_if_false:
l_f1_26:
    jmp     l_f1_9                  #  38:     goto   9
l_f1_9:
l_f1_30_while_cond:
    movl    $62319, %eax            #  41:     if     62319 <= 89192 goto 33
    movl    $89192, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_33                
    jmp     l_f1_29                 #  42:     goto   29
l_f1_33:
    jmp     l_f1_29                 #  44:     goto   29
    jmp     l_f1_30_while_cond      #  45:     goto   30_while_cond
l_f1_29:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 4 of <array 2 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 4 of <array 2 of <bool>>>>>>> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 9 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #   -668(%ebp)  624  [ $v1       <array 5 of <array 3 of <array 5 of <array 4 of <array 2 of <bool>>>>>> %ebp-668 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $656, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $164, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-668(%ebp)           # local array 'v1': 5 dimensions
    movl    $5,-664(%ebp)           #   dimension 1: 5 elements
    movl    $3,-660(%ebp)           #   dimension 2: 3 elements
    movl    $5,-656(%ebp)           #   dimension 3: 5 elements
    movl    $4,-652(%ebp)           #   dimension 4: 4 elements
    movl    $2,-648(%ebp)           #   dimension 5: 2 elements

    # function body
    leal    -668(%ebp), %eax        #   0:     &()    t7 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     param  1 <- t7
    pushl   %eax                   
    movl    $81320, %eax            #   2:     div    t8 <- 81320, 97359
    movl    $97359, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    leal    -668(%ebp), %eax        #   3:     &()    t9 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     param  1 <- t9
    pushl   %eax                   
    movl    $11888, %eax            #   5:     param  0 <- 11888
    pushl   %eax                   
    call    f0                      #   6:     call   t10 <- f0
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -40(%ebp), %eax         #   7:     mul    t11 <- t8, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $7723, %eax             #   8:     add    t12 <- 7723, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  10:     call   t13 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #  11:     call   t14 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    call    WriteLn                 #  12:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $656, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]

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
    movl    $98, %eax               #   0:     if     98 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_5                #   8:     goto   5
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    movl    $60509, %eax            #  11:     sub    t1 <- 60509, 12741
    movl    $12741, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t1 <= 604 goto 11_if_true
    movl    $604, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  15:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $57278, %eax            #  18:     mul    t2 <- 57278, 67866
    movl    $67866, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     div    t3 <- t2, 17982
    movl    $17982, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     div    t4 <- t3, 66414
    movl    $66414, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     assign v0 <- t4
    movl    %eax, v0               
l_test_16_while_cond:
    jmp     l_test_20               #  23:     goto   20
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_21               #  25:     goto   21
l_test_20:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_21:
    movl    $1, %eax                #  29:     if     1 = t5 goto 17_while_body
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  30:     goto   15
l_test_17_while_body:
    movl    $0, %eax                #  32:     assign v1 <- 0
    movb    %al, v1                
    call    dummyBOOLfunc           #  33:     call   t6 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    jmp     l_test_16_while_cond    #  34:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
