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
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 2 of <array 5 of <char>>>>>>> %ebp+8 ]
    #   -100(%ebp)   4  [ $v2       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $v3       <char> %ebp-101 ]
    #   -102(%ebp)   1  [ $v4       <bool> %ebp-102 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   5:     call   t5 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movl    $15901, %eax            #   6:     assign v2 <- 15901
    movl    %eax, -100(%ebp)       
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $6235, %eax             #  11:     mul    t7 <- 6235, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $18277, %eax            #  12:     div    t8 <- 18277, 85367
    movl    $85367, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  13:     add    t9 <- t8, 20364
    movl    $20364, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  14:     sub    t10 <- t9, 92189
    movl    $92189, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  15:     add    t11 <- t7, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 68831
    movl    $68831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t17 <- t16, 68177
    movl    $68177, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     add    t20 <- t19, 99001
    movl    $99001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  31:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $99, %eax               #  36:     assign @t24 <- 99
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_10_while_cond:
    call    dummyINTfunc            #  38:     call   t25 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    $69930, %eax            #  39:     if     69930 < t25 goto 11_while_body
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_11_while_body     
    jmp     l_f0_9                  #  40:     goto   9
l_f0_11_while_body:
    movl    $1, %eax                #  42:     assign v4 <- 1
    movb    %al, -102(%ebp)        
    jmp     l_f0_exit              
l_f0_16_while_cond:
    movl    $100, %eax              #  45:     if     100 <= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17_while_body     
    jmp     l_f0_15                 #  46:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  48:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_10_while_cond      #  50:     goto   10_while_cond
l_f0_9:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_4_if_false         #   2:     goto   4_if_false
    movl    $20474, %eax            #   3:     if     20474 > 20009 goto 6_if_true
    movl    $20009, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_exit              
    movl    $70318, %eax            #  10:     assign v1 <- 70318
    movl    %eax, 8(%ebp)          
    leal    _str_1, %eax            #  11:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  16:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 8 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    movl    $63699, %eax            #   1:     if     63699 = 64031 goto 2_if_true
    movl    $64031, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $33372, %eax            #   5:     if     33372 = 81200 goto 7_while_body
    movl    $81200, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_12                 #  10:     goto   12
l_f2_12:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_9:
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
    call    dummyINTfunc            #  18:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_20_while_cond:
    jmp     l_f2_19                 #  20:     goto   19
    jmp     l_f2_20_while_cond      #  21:     goto   20_while_cond
l_f2_19:
l_f2_23_while_cond:
    jmp     l_f2_23_while_cond      #  24:     goto   23_while_cond
    jmp     l_f2_15                 #  25:     goto   15
l_f2_17_if_false:
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]

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
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #  10:     goto   6
    jmp     l_test_exit            
    call    WriteLn                 #  12:     call   WriteLn
    movl    $97, %eax               #  13:     if     97 < 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  21:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  22:     goto   7_while_cond
l_test_6:
l_test_17_while_cond:
    movl    $5241, %eax             #  25:     assign v1 <- 5241
    movl    %eax, v1               
    jmp     l_test_exit            
    call    dummyINTfunc            #  27:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_17_while_cond    #  28:     goto   17_while_cond
    jmp     l_test_27               #  29:     goto   27
    jmp     l_test_27               #  30:     goto   27
    jmp     l_test_27               #  31:     goto   27
l_test_27:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_29               #  34:     goto   29
    movl    $0, %eax                #  35:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_29:
    movzbl  -21(%ebp), %eax         #  37:     if     t3 # 0 goto 23
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23              
    jmp     l_test_24               #  38:     goto   24
l_test_23:
    movl    $1, %eax                #  40:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_25               #  41:     goto   25
l_test_24:
    movl    $0, %eax                #  43:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_test_25:
    movzbl  -22(%ebp), %eax         #  45:     assign v0 <- t4
    movb    %al, v0                
    movl    $99, %eax               #  46:     if     99 > 99 goto 41_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_41_if_true      
    jmp     l_test_42_if_false      #  47:     goto   42_if_false
l_test_41_if_true:
    jmp     l_test_40               #  49:     goto   40
l_test_42_if_false:
l_test_40:
l_test_45_while_cond:
    movl    $40479, %eax            #  53:     if     40479 > 43483 goto 46_while_body
    movl    $43483, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_46_while_body   
    jmp     l_test_44               #  54:     goto   44
l_test_46_while_body:
    jmp     l_test_45_while_cond    #  56:     goto   45_while_cond
l_test_44:
    jmp     l_test_37               #  58:     goto   37
l_test_37:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
