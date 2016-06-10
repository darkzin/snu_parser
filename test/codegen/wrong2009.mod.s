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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t2
    movb    %al, -15(%ebp)         
    call    WriteLn                 #   7:     call   WriteLn
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     if     99 < t3 goto 8_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_8_if_true:
    movl    $96636, %eax            #  12:     if     96636 = 14091 goto 12_if_true
    movl    $14091, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  13:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_7                  #  18:     goto   7
l_f0_9_if_false:
l_f0_7:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]

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
    jmp     l_f1_exit              
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_3_while_cond:
    movl    $99, %eax               #   3:     if     99 # 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_2                  #   4:     goto   2
l_f1_4_while_body:
    jmp     l_f1_exit              
l_f1_8_while_cond:
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_3_while_cond       #  11:     goto   3_while_cond
l_f1_2:

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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t5       <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t6       <bool> %ebp-79 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 1 of <array 99 of <array 55 of <array 24 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 92 of <array 17 of <array 39 of <array 28 of <array 49 of <bool>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $8188, %eax             #   1:     add    t2 <- 8188, 62658
    movl    $62658, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     add    t3 <- t2, 90686
    movl    $90686, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     if     t3 <= 58283 goto 2_while_body
    movl    $58283, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    movl    $15934, %eax            #   6:     if     15934 >= 66474 goto 5_if_true
    movl    $66474, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   7:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   9:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
l_f2_9_while_cond:
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  16:     if     t4 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_while_body:
    movl    $36125, %eax            #  19:     return 36125
    jmp     l_f2_exit              
    jmp     l_f2_9_while_cond       #  20:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_17                 #  22:     goto   17
    jmp     l_f2_18                 #  23:     goto   18
l_f2_17:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f2_19                 #  26:     goto   19
l_f2_18:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -78(%ebp)         
l_f2_19:
    movl    $0, %eax                #  30:     if     0 # t5 goto 13
    movzbl  -78(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  31:     goto   14
l_f2_13:
    movl    $1, %eax                #  33:     assign t6 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f2_15                 #  34:     goto   15
l_f2_14:
    movl    $0, %eax                #  36:     assign t6 <- 0
    movb    %al, -79(%ebp)         
l_f2_15:
    movl    $85418, %eax            #  38:     sub    t7 <- 85418, 62608
    movl    $62608, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  40:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  41:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  42:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  43:     add    t10 <- t9, 96226
    movl    $96226, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  45:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  46:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  47:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     add    t13 <- t12, 34036
    movl    $34036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  50:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  51:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  52:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  53:     add    t16 <- t15, 95808
    movl    $95808, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  55:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  56:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  57:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  58:     add    t19 <- t18, 72301
    movl    $72301, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  59:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  60:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  61:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  62:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  63:     add    t23 <- v3, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -79(%ebp), %eax         #  64:     assign @t23 <- t6
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    movl    $28924, %eax            #   0:     if     28924 # 88264 goto 1_if_true
    movl    $88264, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $96247, %eax            #   9:     if     96247 < 80175 goto 8
    movl    $80175, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #  18:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     assign v1 <- t1
    movl    %eax, v1               

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
