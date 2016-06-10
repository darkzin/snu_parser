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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
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
l_f0_1_while_cond:
    movl    $1, %eax                #   1:     if     1 # 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t4
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  10:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  11:     goto   9
l_f0_9:
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
    jmp     l_f0_16                 #  14:     goto   16
l_f0_16:
    movl    $100, %eax              #  16:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  17:     goto   12
l_f0_12:
l_f0_21_while_cond:
    jmp     l_f0_22_while_body      #  20:     goto   22_while_body
l_f0_22_while_body:
    call    dummyCHARfunc           #  22:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_21_while_cond      #  23:     goto   21_while_cond

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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 57 of <array 21 of <array 27 of <array 77 of <char>>>>>>> %ebp+12 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_7                  #   7:     goto   7
l_f1_7:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_11_if_true         #  12:     goto   11_if_true
    jmp     l_f1_11_if_true         #  13:     goto   11_if_true
l_f1_11_if_true:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  16:     goto   15
    jmp     l_f1_16_while_cond      #  17:     goto   16_while_cond
l_f1_15:
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $23274, %eax            #  22:     mul    t5 <- 23274, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  23:     add    t6 <- t5, 83916
    movl    $83916, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  27:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  28:     add    t9 <- t8, 31320
    movl    $31320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  32:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     add    t12 <- t11, 63479
    movl    $63479, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  37:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t15 <- t14, 52999
    movl    $52999, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  41:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  42:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  43:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  44:     assign @t19 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_10                 #  45:     goto   10
l_f1_10:
    movl    $98, %eax               #  47:     if     98 <= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  48:     goto   21_if_false
l_f1_20_if_true:
    movl    $0, %eax                #  50:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  51:     if     98 < 100 goto 25
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_25                
    jmp     l_f1_26                 #  52:     goto   26
l_f1_25:
    movl    $1, %eax                #  54:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_27                 #  55:     goto   27
l_f1_26:
    movl    $0, %eax                #  57:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f1_27:
    movzbl  -53(%ebp), %eax         #  59:     assign v0 <- t20
    movb    %al, 8(%ebp)           
    jmp     l_f1_19                 #  60:     goto   19
l_f1_21_if_false:
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 9 of <array 27 of <array 57 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $91719, %eax            #   1:     if     91719 >= 32420 goto 4_if_true
    movl    $32420, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $0, %eax                #   7:     if     0 = 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   8:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  10:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_12_while_cond:
    movl    $31135, %eax            #  14:     if     31135 # 2337 goto 13_while_body
    movl    $2337, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  15:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t4 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  22:     goto   17_if_false
l_f2_16_if_true:
    movl    $30009, %eax            #  24:     if     30009 < 23888 goto 19
    movl    $23888, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_19                
    jmp     l_f2_20                 #  25:     goto   20
l_f2_19:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_21                 #  28:     goto   21
l_f2_20:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_21:
    movzbl  -14(%ebp), %eax         #  32:     assign v1 <- t5
    movb    %al, 12(%ebp)          
    jmp     l_f2_15                 #  33:     goto   15
l_f2_17_if_false:
l_f2_15:
    call    dummyBOOLfunc           #  36:     call   t6 <- dummyBOOLfunc
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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $56040, %eax            #   1:     if     56040 # 57385 goto 6
    movl    $57385, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #   2:     goto   7
l_test_6:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_8                #   5:     goto   8
l_test_7:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_8:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
    jmp     l_test_10               #  11:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyBOOLfunc           #  14:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_1                #  15:     goto   1
l_test_1:
    jmp     l_test_exit            
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  19:     goto   19_while_cond
l_test_22_while_cond:
    movl    $20417, %eax            #  21:     if     20417 < 39419 goto 23_while_body
    movl    $39419, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  22:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  24:     goto   22_while_cond
l_test_21:
    call    ReadInt                 #  26:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    movl    $27417, %eax            #  28:     assign v1 <- 27417
    movl    %eax, v1               
    jmp     l_test_15               #  29:     goto   15
l_test_15:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
