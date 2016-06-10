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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 10 of <array 3 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 7 of <array 5 of <array 5 of <array 6 of <bool>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v5       <bool> %ebp-81 ]

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
    movl    $100, %eax              #   0:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   3:     return t2
    jmp     l_f0_exit              
    movl    $98, %eax               #   4:     if     98 < 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    movl    $41877, %eax            #   7:     if     41877 = 11949 goto 7
    movl    $11949, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_7                 
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f0_9                  #  11:     goto   9
l_f0_8:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -54(%ebp)         
l_f0_9:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  17:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $83696, %eax            #  18:     mul    t5 <- 83696, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  19:     add    t6 <- t5, 36648
    movl    $36648, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  22:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  23:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     add    t9 <- t8, 82228
    movl    $82228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  27:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t12 <- t11, 82663
    movl    $82663, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 26738
    movl    $26738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  37:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t19 <- v4, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  40:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  41:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  42:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_5_if_false         #   4:     goto   5_if_false
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_7_while_cond:
    movl    $34522, %eax            #   9:     if     34522 > 19310 goto 8_while_body
    movl    $19310, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  19:     assign v1 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f1_19_if_false        #  20:     goto   19_if_false
    jmp     l_f1_17                 #  21:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_14                 #  24:     goto   14
l_f1_14:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t3 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    movl    $1363, %eax             #   7:     assign v4 <- 1363
    movl    %eax, -36(%ebp)        
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
l_f2_10_while_cond:
    movl    $53997, %eax            #  13:     sub    t4 <- 53997, 12185
    movl    $12185, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t5 <- t4, 99775
    movl    $99775, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t6 <- t5, 88332
    movl    $88332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t7 <- t6, 37707
    movl    $37707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $28181, %eax            #  17:     if     28181 > t7 goto 11_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  20:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $82000, %eax            #   1:     assign v0 <- 82000
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_2                #   3:     goto   2
l_test_2:
l_test_7_while_cond:
    call    dummyINTfunc            #   6:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $75660, %eax            #   7:     if     75660 < t1 goto 8_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
    movl    $44916, %eax            #  12:     if     44916 = 51556 goto 11_if_true
    movl    $51556, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #  16:     if     99 > 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  17:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  19:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyProcedure          #  22:     call   dummyProcedure
l_test_21_while_cond:
    movl    $98, %eax               #  24:     if     98 # 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_while_body   
    jmp     l_test_20               #  25:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  27:     goto   21_while_cond
l_test_20:
    movl    $97, %eax               #  29:     if     97 >= 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_25_if_true      
    jmp     l_test_26_if_false      #  30:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  32:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_10               #  35:     goto   10
l_test_12_if_false:
l_test_10:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
