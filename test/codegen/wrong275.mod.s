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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 2 of <array 1 of <array 3 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_5                  #   0:     goto   5
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t2 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   7:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   9:     if     98 = 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $76275, %eax            #  15:     if     76275 # 43166 goto 13_if_true
    movl    $43166, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  24:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  25:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 3 of <array 8 of <array 2 of <array 1 of <array 3 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t20      <char> %ebp-54 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 4 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v1       <bool> %ebp-89 ]
    #   -260(%ebp)  168  [ $v2       <array 3 of <array 8 of <array 2 of <array 1 of <array 3 of <char>>>>>> %ebp-260 ]
    #   -264(%ebp)   4  [ $v3       <int> %ebp-264 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $252, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $63, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-260(%ebp)           # local array 'v2': 5 dimensions
    movl    $3,-256(%ebp)           #   dimension 1: 3 elements
    movl    $8,-252(%ebp)           #   dimension 2: 8 elements
    movl    $2,-248(%ebp)           #   dimension 3: 2 elements
    movl    $1,-244(%ebp)           #   dimension 4: 1 elements
    movl    $3,-240(%ebp)           #   dimension 5: 3 elements

    # function body
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_1                  #   3:     goto   1
l_f1_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f1_3:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $74166, %eax            #  12:     mul    t4 <- 74166, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  13:     add    t5 <- t4, 74492
    movl    $74492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  17:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     add    t8 <- t7, 98109
    movl    $98109, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 61292
    movl    $61292, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 76027
    movl    $76027, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  31:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -53(%ebp), %eax         #  34:     assign @t18 <- t2
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -260(%ebp), %eax        #  35:     &()    t19 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  36:     param  0 <- t19
    pushl   %eax                   
    call    f0                      #  37:     call   t20 <- f0
    addl    $4, %esp               
    movb    %al, -54(%ebp)         
l_f1_15_while_cond:
    movl    $8442, %eax             #  39:     if     8442 > 45256 goto 16_while_body
    movl    $45256, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  40:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  42:     goto   15_while_cond
l_f1_14:
    movl    $66359, %eax            #  44:     return 66359
    jmp     l_f1_exit              
    movl    $88111, %eax            #  45:     assign v3 <- 88111
    movl    %eax, -264(%ebp)       
    jmp     l_f1_10                 #  46:     goto   10
l_f1_10:
    call    dummyINTfunc            #  48:     call   t21 <- dummyINTfunc
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  49:     return t21
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $252, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 1 of <array 3 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 8 of <array 10 of <array 8 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $6619, %eax             #   5:     if     6619 <= 41361 goto 4
    movl    $41361, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_4                 
    jmp     l_f2_5                  #   6:     goto   5
l_f2_4:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_6:
    movzbl  -14(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    movl    $1, %eax                #  16:     assign v2 <- 1
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  17:     if     98 = 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  18:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  20:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_8                  #  23:     goto   8
l_f2_8:
    movl    $0, %eax                #  25:     assign v2 <- 0
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_test_1                #   2:     goto   1
l_test_1:
l_test_6_while_cond:
    jmp     l_test_7_while_body     #   5:     goto   7_while_body
    jmp     l_test_7_while_body     #   6:     goto   7_while_body
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
    movl    $56853, %eax            #   9:     add    t0 <- 56853, 38196
    movl    $38196, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t1 <- t0, 98069
    movl    $98069, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $70805, %eax            #  11:     if     70805 < t1 goto 12_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  12:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  14:     goto   11
l_test_13_if_false:
l_test_11:
l_test_16_while_cond:
    jmp     l_test_17_while_body    #  18:     goto   17_while_body
    jmp     l_test_15               #  19:     goto   15
    jmp     l_test_15               #  20:     goto   15
    jmp     l_test_15               #  21:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
