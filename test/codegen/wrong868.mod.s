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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 2 of <array 2 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 8 of <array 8 of <array 9 of <array 2 of <int>>>>>>> %ebp+12 ]
    #   -104(%ebp)   4  [ $v3       <int> %ebp-104 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $5248, %eax             #   0:     add    t5 <- 5248, 64971
    movl    $64971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   1:     add    t6 <- t5, 17413
    movl    $17413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   2:     add    t7 <- t6, 21730
    movl    $21730, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   3:     add    t8 <- t7, 6005
    movl    $6005, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   4:     sub    t9 <- t8, 98349
    movl    $98349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $46188, %eax            #   8:     mul    t11 <- 46188, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t12 <- t11, 64840
    movl    $64840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 18178
    movl    $18178, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     add    t18 <- t17, 92042
    movl    $92042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  23:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t21 <- t20, 43624
    movl    $43624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  28:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -100(%ebp), %eax        #  30:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  31:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  32:     call   t26 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  33:     return t26
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 1 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]

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
    movl    $74068, %eax            #   0:     if     74068 # 28950 goto 1_if_true
    movl    $28950, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    jmp     l_f1_7_while_body       #   8:     goto   7_while_body
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  13:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     return t6
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 6 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 9 of <array 2 of <array 9 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 <= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t5
    movb    %al, -15(%ebp)         
l_f2_6_while_cond:
    movl    $60582, %eax            #  10:     if     60582 < 74922 goto 7_while_body
    movl    $74922, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    movl    $99, %eax               #  13:     if     99 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  14:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  21:     goto   6_while_cond
l_f2_5:
l_f2_16_while_cond:
    movl    $88860, %eax            #  24:     if     88860 >= 52348 goto 17_while_body
    movl    $52348, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_17_while_body     
    jmp     l_f2_15                 #  25:     goto   15
l_f2_17_while_body:
    call    dummyCHARfunc           #  27:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_16_while_cond      #  28:     goto   16_while_cond
l_f2_15:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 8 of <array 1 of <array 9 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_4_while_body     #   5:     goto   4_while_body
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
    leal    v1, %eax                #   8:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  10:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     assign v0 <- t2
    movb    %al, v0                
    movl    $97, %eax               #  12:     if     97 <= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_12:
    movzbl  -22(%ebp), %eax         #  20:     assign v2 <- t3
    movb    %al, v2                
    jmp     l_test_16               #  21:     goto   16
    jmp     l_test_16               #  22:     goto   16
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_17               #  24:     goto   17
l_test_16:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_17:
    movzbl  -23(%ebp), %eax         #  28:     assign v2 <- t4
    movb    %al, v2                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 8 of <array 8 of <array 1 of <array 9 of <array 8 of <char>>>>>>
    .long    5
    .long    8
    .long    8
    .long    1
    .long    9
    .long    8
    .skip 4608
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
