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
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t4       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 96 of <array 83 of <array 6 of <array 69 of <int>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #   1:     assign v3 <- t4
    movb    %al, -85(%ebp)         
    movl    $40421, %eax            #   2:     if     40421 > 89843 goto 2_if_true
    movl    $89843, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $97, %eax               #   5:     assign v3 <- 97
    movb    %al, -85(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $59735, %eax            #  11:     add    t5 <- 59735, 2614
    movl    $2614, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $99796, %eax            #  15:     mul    t7 <- 99796, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t8 <- t7, 50735
    movl    $50735, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 87153
    movl    $87153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 92169
    movl    $92169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t17 <- t16, 3645
    movl    $3645, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  34:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  36:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -68(%ebp), %eax         #  37:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 27 of <array 96 of <array 83 of <array 6 of <array 69 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <bool> %ebp-30 ]
    #   -356265272(%ebp)  356265240  [ $v1       <array 27 of <array 96 of <array 83 of <array 6 of <array 69 of <int>>>>>> %ebp-356265272 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $356265260, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $89066315, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-356265272(%ebp)     # local array 'v1': 5 dimensions
    movl    $27,-356265268(%ebp)    #   dimension 1: 27 elements
    movl    $96,-356265264(%ebp)    #   dimension 2: 96 elements
    movl    $83,-356265260(%ebp)    #   dimension 3: 83 elements
    movl    $6,-356265256(%ebp)     #   dimension 4: 6 elements
    movl    $69,-356265252(%ebp)    #   dimension 5: 69 elements

    # function body
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
    jmp     l_f1_7                  #   3:     goto   7
l_f1_6:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  10:     if     t5 # t6 goto 2
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #  11:     goto   3
l_f1_2:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_4                  #  14:     goto   4
l_f1_3:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f1_4:
    movzbl  -23(%ebp), %eax         #  18:     assign v0 <- t7
    movb    %al, -30(%ebp)         
    movl    $98, %eax               #  19:     if     98 = 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  20:     goto   12_if_false
l_f1_11_if_true:
    leal    -356265272(%ebp), %eax  #  22:     &()    t8 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     param  2 <- t8
    pushl   %eax                   
    movl    $1, %eax                #  24:     param  1 <- 1
    pushl   %eax                   
    movl    $281, %eax              #  25:     if     281 < 87824 goto 15
    movl    $87824, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  26:     goto   16
l_f1_15:
    movl    $1, %eax                #  28:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_17                 #  29:     goto   17
l_f1_16:
    movl    $0, %eax                #  31:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_17:
    movzbl  -29(%ebp), %eax         #  33:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  34:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
l_f1_20_while_cond:
    movl    $99, %eax               #  36:     if     99 < 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_21_while_body     
    jmp     l_f1_19                 #  37:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  39:     goto   20_while_cond
l_f1_19:
    call    dummyBOOLfunc           #  41:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #  42:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $356265260, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 9 of <array 48 of <array 30 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 94 of <array 69 of <array 80 of <array 81 of <char>>>>>>> %ebp+16 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $50287, %eax            #   2:     assign v3 <- 50287
    movl    %eax, -16(%ebp)        
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   4:     goto   7_while_cond
    jmp     l_f2_2                  #   5:     goto   2
l_f2_2:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_5                #   5:     goto   5
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_5:
    movzbl  -15(%ebp), %eax         #   8:     assign v0 <- t2
    movb    %al, v0                
    call    dummyINTfunc            #   9:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
