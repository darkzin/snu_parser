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
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <char> %ebp-31 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   1:     if     t5 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_f0_3:
    movzbl  -30(%ebp), %eax         #   9:     assign v1 <- t6
    movb    %al, -41(%ebp)         
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -31(%ebp)         
    movzbl  -31(%ebp), %eax         #  11:     assign v0 <- t7
    movb    %al, 8(%ebp)           
l_f0_7_while_cond:
    movl    $52189, %eax            #  13:     mul    t8 <- 52189, 59544
    movl    $59544, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     div    t9 <- t8, 61705
    movl    $61705, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t10 <- t9, 67590
    movl    $67590, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t11 <- t10, 20642
    movl    $20642, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t12 <- t11, 65213
    movl    $65213, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t13 <- t12, 99737
    movl    $99737, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $45399, %eax            #  19:     if     45399 = t13 goto 8_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #  20:     goto   6
l_f0_8_while_body:
    movl    $42184, %eax            #  22:     return 42184
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  23:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 77 of <array 3 of <array 50 of <array 49 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 8 of <array 12 of <array 76 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 28 of <array 66 of <array 61 of <array 89 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    call    ReadInt                 #   7:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
    movl    $98, %eax               #   9:     return 98
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 58 of <array 55 of <array 21 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $3382, %eax             #   1:     if     3382 # 11900 goto 4_if_true
    movl    $11900, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  12:     goto   11_while_cond
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  14:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #  15:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    leal    _str_1, %eax            #  16:     &()    t7 <- _str_1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $79688, %eax            #  22:     add    t8 <- 79688, 54727
    movl    $54727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $72113, %eax            #  23:     if     72113 > t8 goto 17
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $1, %eax                #  26:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_19                 #  27:     goto   19
l_f2_18:
    movl    $0, %eax                #  29:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_19:
    movzbl  -41(%ebp), %eax         #  31:     return t9
    jmp     l_f2_exit              
    movl    $91381, %eax            #  32:     if     91381 = 48348 goto 22_if_true
    movl    $48348, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  33:     goto   23_if_false
l_f2_22_if_true:
    call    dummyBOOLfunc           #  35:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_27_while_cond:
    movl    $7376, %eax             #  37:     if     7376 < 96116 goto 28_while_body
    movl    $96116, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_28_while_body     
    jmp     l_f2_26                 #  38:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  40:     goto   27_while_cond
l_f2_26:
    movl    $100, %eax              #  42:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  43:     call   t11 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  44:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_32                 #  45:     goto   32
l_f2_32:
    jmp     l_f2_21                 #  47:     goto   21
l_f2_23_if_false:
l_f2_21:

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $21587, %eax            #   1:     if     21587 <= 65423 goto 5_if_true
    movl    $65423, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   2:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
l_test_9_while_cond:
    movl    $0, %eax                #   8:     if     0 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #   9:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_1                #  14:     goto   1
l_test_1:
    call    dummyCHARfunc           #  16:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  19:     call   t2 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $86254, %eax            #  20:     mul    t3 <- 86254, 58264
    movl    $58264, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $49692, %eax            #  21:     sub    t4 <- 49692, t3
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     assign v0 <- t4
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
