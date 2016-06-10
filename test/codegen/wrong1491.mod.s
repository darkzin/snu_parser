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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 42 of <array 14 of <array 67 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $27066, %eax            #   1:     add    t4 <- 27066, 14410
    movl    $14410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t4
    movl    %eax, -24(%ebp)        
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v2       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $v3       <bool> %ebp-42 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $9014, %eax             #   1:     mul    t3 <- 9014, 93249
    movl    $93249, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t4 <- t3, 11085
    movl    $11085, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $88624, %eax            #   3:     if     88624 >= t4 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   6:     assign v2 <- 100
    movb    %al, -41(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_12                 #  12:     goto   12
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f1_12:
    movl    $1, %eax                #  15:     if     1 # t5 goto 8_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  16:     goto   6
l_f1_8_while_body:
    movl    $99, %eax               #  18:     assign v2 <- 99
    movb    %al, -41(%ebp)         
l_f1_16_while_cond:
    jmp     l_f1_15                 #  20:     goto   15
    jmp     l_f1_16_while_cond      #  21:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_21_while_cond:
    movl    $0, %eax                #  26:     if     0 # 0 goto 22_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_22_while_body     
    jmp     l_f1_20                 #  27:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  29:     goto   21_while_cond
l_f1_20:
l_f1_25_while_cond:
    movl    $100, %eax              #  32:     if     100 > 98 goto 26_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_26_while_body     
    jmp     l_f1_24                 #  33:     goto   24
l_f1_26_while_body:
    jmp     l_f1_25_while_cond      #  35:     goto   25_while_cond
l_f1_24:
    call    dummyCHARfunc           #  37:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f1_7_while_cond       #  38:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_31_if_false        #  40:     goto   31_if_false
l_f1_33_while_cond:
    jmp     l_f1_33_while_cond      #  42:     goto   33_while_cond
    jmp     l_f1_exit              
    call    ReadInt                 #  44:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  45:     if     98 <= 99 goto 38
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_38                
    jmp     l_f1_39                 #  46:     goto   39
l_f1_38:
    movl    $1, %eax                #  48:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_40                 #  49:     goto   40
l_f1_39:
    movl    $0, %eax                #  51:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_40:
    movzbl  -33(%ebp), %eax         #  53:     assign v3 <- t8
    movb    %al, -42(%ebp)         
    call    dummyINTfunc            #  54:     call   t9 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    call    dummyBOOLfunc           #  55:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  56:     if     100 <= 100 goto 45
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_45                
    jmp     l_f1_46                 #  57:     goto   46
l_f1_45:
    movl    $1, %eax                #  59:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_47                 #  60:     goto   47
l_f1_46:
    movl    $0, %eax                #  62:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_47:
    movzbl  -14(%ebp), %eax         #  64:     assign v3 <- t11
    movb    %al, -42(%ebp)         
    jmp     l_f1_29                 #  65:     goto   29
l_f1_31_if_false:
l_f1_29:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 38 of <array 23 of <array 23 of <array 48 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 78 of <array 88 of <array 19 of <array 99 of <array 89 of <char>>>>>>> %ebp+16 ]

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
    movl    $7528, %eax             #   0:     if     7528 < 70483 goto 1_if_true
    movl    $70483, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $99, %eax               #   4:     if     99 > 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  12:     goto   12_while_cond
    call    ReadInt                 #  13:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    ReadInt                 #  17:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $22228, %eax            #  18:     if     22228 = 67335 goto 17
    movl    $67335, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_17                
    jmp     l_f2_18                 #  19:     goto   18
l_f2_17:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_19                 #  22:     goto   19
l_f2_18:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_19:
    movzbl  -21(%ebp), %eax         #  26:     assign v3 <- t5
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $99, %eax               #   0:     if     99 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    movl    $45008, %eax            #  11:     if     45008 >= 16463 goto 7_if_true
    movl    $16463, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #  14:     if     100 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  17:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_6                #  21:     goto   6
l_test_8_if_false:
l_test_6:
l_test_16_while_cond:
    call    dummyBOOLfunc           #  25:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     if     t2 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_17_while_body    #  27:     goto   17_while_body
    jmp     l_test_15               #  28:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  30:     goto   16_while_cond
l_test_15:
l_test_21_while_cond:
    movl    $99, %eax               #  33:     if     99 > 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  34:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  36:     goto   21_while_cond
l_test_20:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
