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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
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
    #    -65(%ebp)   1  [ $t20      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 8 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -97(%ebp)   1  [ $v3       <char> %ebp-97 ]

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
l_f0_1_while_cond:
    movl    $51598, %eax            #   1:     sub    t0 <- 51598, 24637
    movl    $24637, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 30851
    movl    $30851, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 1345
    movl    $1345, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $75766, %eax            #   4:     if     75766 >= t2 goto 2_while_body
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    leal    _str_1, %eax            #   7:     &()    t3 <- _str_1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $0, %eax                #  12:     assign v2 <- 0
    movb    %al, 16(%ebp)          
    movl    $1, %eax                #  13:     assign v2 <- 1
    movb    %al, 16(%ebp)          
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $51598, %eax            #  17:     mul    t5 <- 51598, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     add    t6 <- t5, 4248
    movl    $4248, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  22:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  23:     add    t9 <- t8, 70821
    movl    $70821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -96(%ebp), %eax         #  27:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t12 <- t11, 96444
    movl    $96444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t15 <- t14, 24047
    movl    $24047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  36:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t19 <- v0, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  39:     assign @t19 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98, %eax               #  40:     return 98
    jmp     l_f0_exit              
    movl    $96984, %eax            #  41:     assign v1 <- 96984
    movl    %eax, 12(%ebp)         
    movl    $97, %eax               #  42:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  43:     goto   5
l_f0_5:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  46:     goto   17
    jmp     l_f0_18_while_cond      #  47:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_22_if_false        #  49:     goto   22_if_false
    jmp     l_f0_20                 #  50:     goto   20
l_f0_22_if_false:
l_f0_20:
    movl    $100, %eax              #  53:     if     100 > 97 goto 24
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_24                
    jmp     l_f0_25                 #  54:     goto   25
l_f0_24:
    movl    $1, %eax                #  56:     assign t20 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_26                 #  57:     goto   26
l_f0_25:
    movl    $0, %eax                #  59:     assign t20 <- 0
    movb    %al, -65(%ebp)         
l_f0_26:
    movzbl  -65(%ebp), %eax         #  61:     assign v2 <- t20
    movb    %al, 16(%ebp)          
    jmp     l_f0_14                 #  62:     goto   14
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 8 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 2 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 5 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -528(%ebp)  504  [ $v4       <array 10 of <array 1 of <array 3 of <array 8 of <array 2 of <char>>>>>> %ebp-528 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $516, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $129, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-528(%ebp)           # local array 'v4': 5 dimensions
    movl    $10,-524(%ebp)          #   dimension 1: 10 elements
    movl    $1,-520(%ebp)           #   dimension 2: 1 elements
    movl    $3,-516(%ebp)           #   dimension 3: 3 elements
    movl    $8,-512(%ebp)           #   dimension 4: 8 elements
    movl    $2,-508(%ebp)           #   dimension 5: 2 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     return 98
    jmp     l_f1_exit              
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #   4:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_7_while_cond:
    jmp     l_f1_10                 #   9:     goto   10
l_f1_10:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  12:     goto   12
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  16:     goto   17
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    movzbl  -13(%ebp), %eax         #  19:     if     t0 = t1 goto 8_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #  20:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond
l_f1_6:
l_f1_20_while_cond:
    movl    $100, %eax              #  25:     if     100 > 100 goto 23
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_23                
    jmp     l_f1_24                 #  26:     goto   24
l_f1_23:
    movl    $1, %eax                #  28:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_25                 #  29:     goto   25
l_f1_24:
    movl    $0, %eax                #  31:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f1_25:
    movzbl  -15(%ebp), %eax         #  33:     param  2 <- t2
    pushl   %eax                   
    movl    $19019, %eax            #  34:     param  1 <- 19019
    pushl   %eax                   
    leal    -528(%ebp), %eax        #  35:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  37:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  38:     if     97 > t4 goto 21_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_21_while_body     
    jmp     l_f1_19                 #  39:     goto   19
l_f1_21_while_body:
l_f1_28_while_cond:
    jmp     l_f1_27                 #  42:     goto   27
    jmp     l_f1_28_while_cond      #  43:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_20_while_cond      #  45:     goto   20_while_cond
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $516, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 8 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 4 of <array 3 of <array 9 of <array 6 of <char>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]
    #   -536(%ebp)  504  [ $v3       <array 10 of <array 1 of <array 3 of <array 8 of <array 2 of <char>>>>>> %ebp-536 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $524, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $131, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-536(%ebp)           # local array 'v3': 5 dimensions
    movl    $10,-532(%ebp)          #   dimension 1: 10 elements
    movl    $1,-528(%ebp)           #   dimension 2: 1 elements
    movl    $3,-524(%ebp)           #   dimension 3: 3 elements
    movl    $8,-520(%ebp)           #   dimension 4: 8 elements
    movl    $2,-516(%ebp)           #   dimension 5: 2 elements

    # function body
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $49023, %eax            #   2:     return 49023
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    movl    $78386, %eax            #   4:     assign v1 <- 78386
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #   5:     param  2 <- 0
    pushl   %eax                   
    movl    $85940, %eax            #   6:     param  1 <- 85940
    pushl   %eax                   
    leal    -536(%ebp), %eax        #   7:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   9:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  10:     if     97 < t2 goto 7
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #  11:     goto   8
l_f2_7:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_9                  #  14:     goto   9
l_f2_8:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_f2_9:
    movzbl  -22(%ebp), %eax         #  18:     assign v2 <- t3
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $524, %esp              # remove locals
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
    movl    $99, %eax               #   1:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_test_3_while_cond:
    jmp     l_test_2                #   4:     goto   2
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_7                #  13:     goto   7
l_test_7:
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
