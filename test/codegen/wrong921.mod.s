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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 9 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <bool> %ebp-81 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    movl    $31710, %eax            #   3:     if     31710 >= 44012 goto 6_if_true
    movl    $44012, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $99, %eax               #   9:     if     99 >= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_14                 #  17:     goto   14
l_f0_14:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_16                 #  20:     goto   16
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f0_16:
    movzbl  -53(%ebp), %eax         #  23:     return t2
    jmp     l_f0_exit              
    movl    $0, %eax                #  24:     if     0 = 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  25:     goto   22_if_false
l_f0_21_if_true:
    movl    $1, %eax                #  27:     if     1 # 0 goto 25_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  28:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_28                 #  30:     goto   28
l_f0_28:
    movl    $28485, %eax            #  32:     if     28485 > 20946 goto 32
    movl    $20946, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_32                
    jmp     l_f0_33                 #  33:     goto   33
l_f0_32:
    movl    $1, %eax                #  35:     assign t3 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f0_34                 #  36:     goto   34
l_f0_33:
    movl    $0, %eax                #  38:     assign t3 <- 0
    movb    %al, -54(%ebp)         
l_f0_34:
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $74377, %eax            #  43:     mul    t5 <- 74377, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t6 <- t5, 43061
    movl    $43061, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  45:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t9 <- t8, 25407
    movl    $25407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  50:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  53:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  54:     add    t12 <- t11, 18099
    movl    $18099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  57:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  58:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  59:     add    t15 <- t14, 97097
    movl    $97097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  60:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  61:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  62:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  63:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  64:     add    t19 <- v2, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  65:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_24                 #  66:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_20                 #  69:     goto   20
l_f0_22_if_false:
l_f0_20:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 6 of <array 3 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 9 of <array 7 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
l_f1_2_while_cond:
    movl    $98, %eax               #   2:     if     98 >= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $0, %eax                #   9:     assign v3 <- 0
    movb    %al, -14(%ebp)         
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
    jmp     l_f1_9                  #  11:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    call    WriteLn                 #  16:     call   WriteLn

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
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 9 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 6 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 6 of <array 9 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -26(%ebp)   1  [ $v3       <char> %ebp-26 ]
    #   -25252(%ebp)  25224  [ $v4       <array 10 of <array 4 of <array 10 of <array 9 of <array 7 of <bool>>>>>> %ebp-25252 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25240, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6310, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-25252(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-25248(%ebp)        #   dimension 1: 10 elements
    movl    $4,-25244(%ebp)         #   dimension 2: 4 elements
    movl    $10,-25240(%ebp)        #   dimension 3: 10 elements
    movl    $9,-25236(%ebp)         #   dimension 4: 9 elements
    movl    $7,-25232(%ebp)         #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, -26(%ebp)         
l_f2_2_while_cond:
    movl    $98, %eax               #   3:     if     98 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    leal    -25252(%ebp), %eax      #   9:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t3
    pushl   %eax                   
    movl    $17508, %eax            #  11:     param  1 <- 17508
    pushl   %eax                   
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  14:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     if     t5 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_while_body:
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  19:     goto   9_while_cond
    jmp     l_f2_6_while_cond       #  20:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $25240, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $81011, %eax            #   4:     mul    t1 <- 81011, 44495
    movl    $44495, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t1 < 83949 goto 3_if_true
    movl    $83949, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   6:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
