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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 5 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -13(%ebp)   1  [ $v5       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     assign v5 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $99, %eax               #   3:     if     99 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
l_f0_7_while_cond:
    movl    $49628, %eax            #   7:     if     49628 > 40935 goto 8_while_body
    movl    $40935, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  13:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_5_while_cond:
    movl    $1, %eax                #   3:     if     1 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
l_f1_9_while_cond:
    movl    $35086, %eax            #  11:     add    t7 <- 35086, 52425
    movl    $52425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     if     t7 <= 36022 goto 10_while_body
    movl    $36022, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    movl    $98, %eax               #  15:     assign v2 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  17:     goto   9_while_cond
l_f1_8:
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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 4 of <array 6 of <array 1 of <array 5 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 > t7 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   4:     assign v2 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     return t8
    jmp     l_f2_exit              
    movl    $49038, %eax            #  10:     if     49038 <= 10390 goto 7_if_true
    movl    $10390, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
l_f2_7_if_true:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  14:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $53242, %eax            #   0:     if     53242 < 31480 goto 1
    movl    $31480, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
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
l_test_6_while_cond:
    movl    $68615, %eax            #  10:     sub    t1 <- 68615, 46891
    movl    $46891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     sub    t2 <- t1, 36647
    movl    $36647, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $37681, %eax            #  12:     if     37681 < t2 goto 7_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #  13:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  15:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #  19:     if     100 >= t3 goto 11_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_11_while_body   
    jmp     l_test_9                #  20:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #  24:     if     99 > 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16              
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_18:
    movzbl  -27(%ebp), %eax         #  32:     assign v0 <- t5
    movb    %al, v0                
    movl    $79609, %eax            #  33:     param  0 <- 79609
    pushl   %eax                   
    call    WriteInt                #  34:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #  35:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_10_while_cond    #  36:     goto   10_while_cond
l_test_9:
l_test_23_while_cond:
    movl    $1, %eax                #  39:     if     1 = 0 goto 24_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  40:     goto   22
l_test_24_while_body:
    jmp     l_test_exit            
l_test_28_while_cond:
    movl    $97, %eax               #  44:     if     97 < 100 goto 29_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_29_while_body   
    jmp     l_test_27               #  45:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  47:     goto   28_while_cond
l_test_27:
    jmp     l_test_23_while_cond    #  49:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
