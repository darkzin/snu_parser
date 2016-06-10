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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_1                  #   2:     goto   1
l_f0_1:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, -15(%ebp)         
l_f0_8_while_cond:
    movl    $35489, %eax            #  10:     if     35489 < 21718 goto 9_while_body
    movl    $21718, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_while_body:
l_f0_12_while_cond:
    jmp     l_f0_11                 #  14:     goto   11
    jmp     l_f0_12_while_cond      #  15:     goto   12_while_cond
l_f0_11:
    movl    $99, %eax               #  17:     if     99 # 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_15                
    jmp     l_f0_16                 #  18:     goto   16
l_f0_15:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_17                 #  21:     goto   17
l_f0_16:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_17:
    movzbl  -14(%ebp), %eax         #  25:     assign v0 <- t1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8_while_cond       #  26:     goto   8_while_cond
l_f0_7:
    movl    $0, %eax                #  28:     assign v0 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f0_19                 #  29:     goto   19
l_f0_19:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 10 of <array 10 of <array 3 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $50779, %eax            #   1:     add    t1 <- 50779, 24773
    movl    $24773, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 93612
    movl    $93612, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t3 <- t2, 67019
    movl    $67019, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t4 <- t3, 34062
    movl    $34062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     add    t5 <- t4, 75147
    movl    $75147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     sub    t6 <- t5, 63111
    movl    $63111, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   7:     sub    t7 <- t6, 49816
    movl    $49816, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   8:     return t7
    jmp     l_f1_exit              
    movl    $93690, %eax            #   9:     sub    t8 <- 93690, 13492
    movl    $13492, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     add    t9 <- t8, 13080
    movl    $13080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  11:     add    t10 <- t9, 28273
    movl    $28273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     sub    t11 <- t10, 77590
    movl    $77590, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t12 <- t11, 85582
    movl    $85582, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     return t12
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 10 of <array 10 of <array 3 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 2 of <array 10 of <array 7 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 3 of <array 8 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 6 of <array 10 of <array 9 of <array 5 of <int>>>>>>> %ebp+16 ]
    #    -96(%ebp)   4  [ $v3       <int> %ebp-96 ]
    #   -84120(%ebp)  84024  [ $v4       <array 7 of <array 10 of <array 10 of <array 3 of <array 10 of <int>>>>>> %ebp-84120 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84108, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21027, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-84120(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-84116(%ebp)         #   dimension 1: 7 elements
    movl    $10,-84112(%ebp)        #   dimension 2: 10 elements
    movl    $10,-84108(%ebp)        #   dimension 3: 10 elements
    movl    $3,-84104(%ebp)         #   dimension 4: 3 elements
    movl    $10,-84100(%ebp)        #   dimension 5: 10 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   3:     param  2 <- 97
    pushl   %eax                   
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    leal    -84120(%ebp), %eax      #   5:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   7:     call   t2 <- f1
    addl    $12, %esp              
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   8:     sub    t3 <- t2, 83875
    movl    $83875, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $67886, %eax            #  12:     mul    t5 <- 67886, t4
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t6 <- t5, 11990
    movl    $11990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  18:     add    t9 <- t8, 76994
    movl    $76994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -92(%ebp), %eax         #  22:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t12 <- t11, 94214
    movl    $94214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t15 <- t14, 99107
    movl    $99107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  31:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  33:     add    t19 <- v2, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -68(%ebp), %eax         #  34:     assign @t19 <- t3
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $87443, %eax            #  35:     assign v3 <- 87443
    movl    %eax, -96(%ebp)        

l_f2_exit:
    # epilogue
    addl    $84108, %esp            # remove locals
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
l_test_1_while_cond:
    jmp     l_test_1_while_cond     #   1:     goto   1_while_cond
    movl    $97, %eax               #   2:     if     97 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  12:     goto   14_while_body
    jmp     l_test_14_while_body    #  13:     goto   14_while_body
l_test_14_while_body:
l_test_19_while_cond:
    movl    $34989, %eax            #  16:     if     34989 < 4921 goto 20_while_body
    movl    $4921, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  17:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  19:     goto   19_while_cond
l_test_18:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
