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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     if     99 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_5:
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 1 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -1844(%ebp)  1824  [ $v4       <array 6 of <array 1 of <array 10 of <array 6 of <array 5 of <bool>>>>>> %ebp-1844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1832, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $458, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1844(%ebp)          # local array 'v4': 5 dimensions
    movl    $6,-1840(%ebp)          #   dimension 1: 6 elements
    movl    $1,-1836(%ebp)          #   dimension 2: 1 elements
    movl    $10,-1832(%ebp)         #   dimension 3: 10 elements
    movl    $6,-1828(%ebp)          #   dimension 4: 6 elements
    movl    $5,-1824(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f1_exit              
    leal    -1844(%ebp), %eax       #   1:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     return t3
    jmp     l_f1_exit              
    movl    $97, %eax               #   6:     return 97
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $1832, %esp             # remove locals
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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t23      <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t24      <char> %ebp-70 ]
    #    -71(%ebp)   1  [ $t3       <bool> %ebp-71 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 7 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 9 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v3       <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $v4       <char> %ebp-98 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     if     t2 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_4:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -71(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -71(%ebp)         
l_f2_3:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $40459, %eax            #  12:     mul    t5 <- 40459, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     add    t6 <- t5, 57547
    movl    $57547, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  18:     add    t9 <- t8, 85696
    movl    $85696, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  22:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t12 <- t11, 51759
    movl    $51759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t15 <- t14, 5921
    movl    $5921, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -71(%ebp), %eax         #  34:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_6_while_cond:
    movl    $46899, %eax            #  36:     sub    t20 <- 46899, 30827
    movl    $30827, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     add    t21 <- t20, 94970
    movl    $94970, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     sub    t22 <- t21, 87604
    movl    $87604, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     if     t22 > 84098 goto 7_while_body
    movl    $84098, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #  40:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  43:     goto   10_while_cond
l_f2_13_while_cond:
    movl    $81548, %eax            #  45:     if     81548 = 43808 goto 14_while_body
    movl    $43808, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  46:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  48:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_6_while_cond       #  50:     goto   6_while_cond
l_f2_5:
    movl    $0, %eax                #  52:     param  2 <- 0
    pushl   %eax                   
    movl    $100, %eax              #  53:     param  1 <- 100
    pushl   %eax                   
    call    dummyCHARfunc           #  54:     call   t23 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  55:     param  0 <- t23
    pushl   %eax                   
    call    f1                      #  56:     call   t24 <- f1
    addl    $12, %esp              
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #  57:     assign v4 <- t24
    movb    %al, -98(%ebp)         

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    WriteLn                 #   2:     call   WriteLn
l_test_3_while_cond:
    jmp     l_test_2                #   4:     goto   2
    movl    $98, %eax               #   5:     assign v0 <- 98
    movb    %al, v0                
    movl    $86768, %eax            #   6:     if     86768 = 72767 goto 7_if_true
    movl    $72767, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3_while_cond     #  12:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_11               #  16:     goto   11
    call    dummyBOOLfunc           #  17:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     if     t1 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  19:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  21:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
