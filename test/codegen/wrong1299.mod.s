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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 31 of <array 82 of <array 63 of <array 100 of <array 96 of <int>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $37312, %eax            #   2:     if     37312 < 30017 goto 5_if_true
    movl    $30017, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $76110, %eax            #   8:     assign v2 <- 76110
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   9:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
    jmp     l_f0_12_if_false        #  11:     goto   12_if_false
    movl    $100, %eax              #  12:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 40 of <array 10 of <array 33 of <array 98 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 90 of <array 25 of <array 7 of <array 97 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
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
    #    -53(%ebp)   1  [ $t3       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 24 of <array 9 of <array 65 of <array 29 of <array 50 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v1       <char> %ebp-81 ]

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
    movl    $73958, %eax            #   0:     if     73958 <= 23228 goto 1_if_true
    movl    $23228, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_8                  #   4:     goto   8
    jmp     l_f2_8                  #   5:     goto   8
    jmp     l_f2_8                  #   6:     goto   8
    jmp     l_f2_8                  #   7:     goto   8
l_f2_8:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_10                 #  10:     goto   10
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -53(%ebp)         
l_f2_10:
    movzbl  -53(%ebp), %eax         #  13:     if     t3 = 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #  14:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  16:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_18_while_cond:
    movl    $98, %eax               #  22:     if     98 <= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  23:     goto   17
l_f2_19_while_body:
    movl    $100, %eax              #  25:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_18_while_cond      #  27:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_23_if_true         #  29:     goto   23_if_true
    jmp     l_f2_23_if_true         #  30:     goto   23_if_true
    jmp     l_f2_24_if_false        #  31:     goto   24_if_false
l_f2_23_if_true:
l_f2_29_while_cond:
    movl    $97, %eax               #  34:     if     97 <= 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_30_while_body     
    jmp     l_f2_28                 #  35:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  37:     goto   29_while_cond
l_f2_28:
    movl    $46116, %eax            #  39:     return 46116
    jmp     l_f2_exit              
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $82069, %eax            #  43:     mul    t5 <- 82069, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t6 <- t5, 68178
    movl    $68178, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  45:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t9 <- t8, 14064
    movl    $14064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  50:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  51:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  52:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  53:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  54:     add    t12 <- t11, 95071
    movl    $95071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  57:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  58:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  59:     add    t15 <- t14, 90906
    movl    $90906, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  60:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  61:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  62:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  63:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  64:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  65:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $46032, %eax            #  66:     return 46032
    jmp     l_f2_exit              
    movl    $99, %eax               #  67:     if     99 # 99 goto 36_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_36_if_true        
    jmp     l_f2_37_if_false        #  68:     goto   37_if_false
l_f2_36_if_true:
    jmp     l_f2_35                 #  70:     goto   35
l_f2_37_if_false:
l_f2_35:
    jmp     l_f2_22                 #  73:     goto   22
l_f2_24_if_false:
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
    movl    $100, %eax              #   4:     if     100 = 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyBOOLfunc           #  10:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
l_test_10_while_cond:
    jmp     l_test_9                #  15:     goto   9
    call    dummyCHARfunc           #  16:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_exit            
    movl    $99, %eax               #  18:     if     99 < 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  21:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $98, %eax               #  24:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  26:     goto   10_while_cond
l_test_9:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
