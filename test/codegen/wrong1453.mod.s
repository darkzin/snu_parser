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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t4
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   9:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_8                  #  11:     goto   8
    movl    $100, %eax              #  12:     assign v4 <- 100
    movb    %al, -16(%ebp)         
    jmp     l_f0_14_if_false        #  13:     goto   14_if_false
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $43831, %eax            #  17:     return 43831
    jmp     l_f0_exit              
    jmp     l_f0_9_while_cond       #  18:     goto   9_while_cond
l_f0_8:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t7       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 75 of <array 36 of <array 8 of <array 54 of <int>>>>>>> %ebp+12 ]
    #    -96(%ebp)   4  [ $v2       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_4_while_cond:
    movl    $100, %eax              #   1:     if     100 > 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_5_while_body      
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $87504, %eax            #   7:     if     87504 >= 27023 goto 11_while_body
    movl    $27023, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #   8:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond
l_f1_9:
    movl    $99, %eax               #  12:     if     99 > 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  13:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  15:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $36463, %eax            #  18:     param  2 <- 36463
    pushl   %eax                   
    movl    $51779, %eax            #  19:     param  1 <- 51779
    pushl   %eax                   
    movl    $82666, %eax            #  20:     sub    t4 <- 82666, 95593
    movl    $95593, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  22:     call   t5 <- f0
    addl    $12, %esp              
    movl    %eax, -80(%ebp)        
    jmp     l_f1_4_while_cond       #  23:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #  25:     goto   0
l_f1_0:
    call    dummyBOOLfunc           #  27:     call   t6 <- dummyBOOLfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  28:     if     t6 = 1 goto 19_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  29:     goto   20_if_false
l_f1_19_if_true:
    call    dummyBOOLfunc           #  31:     call   t7 <- dummyBOOLfunc
    movb    %al, -82(%ebp)         
    jmp     l_f1_18                 #  32:     goto   18
l_f1_20_if_false:
l_f1_18:
    leal    _str_1, %eax            #  35:     &()    t8 <- _str_1
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  37:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_exit              
l_f1_28_while_cond:
    jmp     l_f1_27                 #  40:     goto   27
    jmp     l_f1_28_while_cond      #  41:     goto   28_while_cond
l_f1_27:
    movl    $99, %eax               #  43:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_33_if_false        #  44:     goto   33_if_false
    jmp     l_f1_31                 #  45:     goto   31
l_f1_33_if_false:
l_f1_31:
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  50:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $17024, %eax            #  51:     mul    t10 <- 17024, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  52:     add    t11 <- t10, 93856
    movl    $93856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  53:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  56:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  57:     add    t14 <- t13, 42064
    movl    $42064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  58:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  59:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  60:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  61:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  62:     add    t17 <- t16, 33014
    movl    $33014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  63:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  64:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  65:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  66:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  67:     add    t20 <- t19, 17244
    movl    $17244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  68:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  69:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  70:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  71:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  72:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $44342, %eax            #  73:     assign @t24 <- 44342
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_exit              
    jmp     l_f1_22                 #  75:     goto   22
l_f1_22:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 >= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  10:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v0 <- t6
    movb    %al, -17(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_11                 #  13:     goto   11
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -16(%ebp)         
l_f2_12:
    movl    $0, %eax                #  19:     if     0 = t7 goto 8_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  20:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  22:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_1                #   5:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  10:     if     99 <= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  14:     goto   12
l_test_11:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_12:
    movzbl  -15(%ebp), %eax         #  18:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    call    f2                      #  20:     call   t3 <- f2
    movb    %al, -16(%ebp)         

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
