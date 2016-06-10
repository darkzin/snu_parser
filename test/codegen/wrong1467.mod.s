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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f0_2_while_cond:
    jmp     l_f0_9                  #   2:     goto   9
    jmp     l_f0_5                  #   3:     goto   5
l_f0_9:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  13:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_1:
    call    ReadInt                 #  18:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     sub    t3 <- t2, 80852
    movl    $80852, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     assign v3 <- t3
    movl    %eax, 20(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 92 of <array 99 of <array 75 of <array 99 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 51 of <array 4 of <array 42 of <array 18 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t1
    jmp     l_f1_exit              
l_f1_6_while_cond:
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   9:     if     100 <= t2 goto 7_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  15:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     if     t3 # t4 goto 10
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  17:     goto   11
l_f1_10:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_12                 #  20:     goto   12
l_f1_11:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_12:
    movzbl  -17(%ebp), %eax         #  24:     return t5
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t3       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 63 of <array 86 of <array 66 of <array 95 of <int>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v1       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $v2       <int> %ebp-92 ]

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
    movl    $1, %eax                #   0:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v1 <- t1
    movb    %al, -85(%ebp)         
    call    dummyProcedure          #   5:     call   dummyProcedure
    movl    $42612, %eax            #   6:     if     42612 <= 52362 goto 8_if_true
    movl    $52362, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   7:     goto   9_if_false
l_f2_8_if_true:
    movl    $36686, %eax            #   9:     if     36686 >= 95198 goto 12
    movl    $95198, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  10:     goto   13
l_f2_12:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_14                 #  13:     goto   14
l_f2_13:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f2_14:
    movzbl  -57(%ebp), %eax         #  17:     return t2
    jmp     l_f2_exit              
    movl    $1, %eax                #  18:     return 1
    jmp     l_f2_exit              
    movl    $0, %eax                #  19:     return 0
    jmp     l_f2_exit              
    movl    $41857, %eax            #  20:     if     41857 > 73872 goto 19
    movl    $73872, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19                
    jmp     l_f2_20                 #  21:     goto   20
l_f2_19:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_21                 #  24:     goto   21
l_f2_20:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -58(%ebp)         
l_f2_21:
    movzbl  -58(%ebp), %eax         #  28:     return t3
    jmp     l_f2_exit              
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $79132, %eax            #  32:     mul    t5 <- 79132, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t6 <- t5, 85310
    movl    $85310, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  37:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  38:     add    t9 <- t8, 74495
    movl    $74495, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -84(%ebp), %eax         #  42:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     add    t12 <- t11, 57899
    movl    $57899, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  46:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  47:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  48:     add    t15 <- t14, 18326
    movl    $18326, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  49:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  51:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  52:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  53:     add    t19 <- v0, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $50793, %eax            #  54:     assign @t19 <- 50793
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_25_while_cond:
    movl    $97, %eax               #  56:     if     97 < 98 goto 26_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_26_while_body     
    jmp     l_f2_24                 #  57:     goto   24
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  59:     goto   25_while_cond
l_f2_24:
    movl    $77004, %eax            #  61:     assign v2 <- 77004
    movl    %eax, -92(%ebp)        
    jmp     l_f2_7                  #  62:     goto   7
l_f2_9_if_false:
l_f2_7:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $99, %eax               #   4:     if     99 < 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
    movl    $96188, %eax            #  12:     if     96188 = 86144 goto 9_if_true
    movl    $86144, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    movl    $97, %eax               #  16:     if     97 <= 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
    movl    $89897, %eax            #  21:     assign v0 <- 89897
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_8                #  23:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyCHARfunc           #  26:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
