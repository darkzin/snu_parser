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
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 72 of <array 22 of <array 52 of <array 81 of <bool>>>>>>> %ebp+12 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $31917, %eax            #   1:     assign v3 <- 31917
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
    movl    $37449, %eax            #   6:     assign v3 <- 37449
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 62 of <array 20 of <array 98 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 79 of <array 2 of <array 20 of <array 38 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 56 of <array 99 of <array 68 of <array 38 of <array 23 of <bool>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    jmp     l_f1_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t6 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_while_body:
    movl    $70344, %eax            #  10:     assign v4 <- 70344
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  15:     return t8
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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 82 of <array 34 of <array 74 of <array 95 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 78 of <array 64 of <array 69 of <array 51 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t6
    movb    %al, 12(%ebp)          
l_f2_2_while_cond:
    movl    $100, %eax              #   3:     if     100 < 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $97, %eax               #   6:     assign v2 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
l_f2_7_while_cond:
    jmp     l_f2_10                 #  10:     goto   10
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  18:     if     t7 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  19:     goto   6
l_f2_8_while_body:
    jmp     l_f2_14                 #  21:     goto   14
l_f2_14:
    jmp     l_f2_7_while_cond       #  23:     goto   7_while_cond
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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]

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
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #   4:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    movl    $92922, %eax            #   6:     if     92922 > 50828 goto 7
    movl    $50828, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $0, %eax                #  16:     if     0 # 0 goto 13
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13              
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  24:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  25:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_19_if_false      #  28:     goto   19_if_false
    movl    $100, %eax              #  29:     if     100 >= 98 goto 23_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_23_if_true      
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  32:     goto   22
l_test_24_if_false:
l_test_22:
l_test_27_while_cond:
    movl    $0, %eax                #  36:     if     0 # 1 goto 28_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_28_while_body   
    jmp     l_test_26               #  37:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  39:     goto   27_while_cond
l_test_26:
    jmp     l_test_17               #  41:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            
    movl    $0, %eax                #  45:     assign v0 <- 0
    movb    %al, v0                
    movl    $69641, %eax            #  46:     add    t2 <- 69641, 8731
    movl    $8731, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  47:     add    t3 <- t2, 75842
    movl    $75842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     sub    t4 <- t3, 93949
    movl    $93949, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $10804, %eax            #  49:     if     10804 > t4 goto 33
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_33              
    jmp     l_test_34               #  50:     goto   34
l_test_33:
    movl    $1, %eax                #  52:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_35               #  53:     goto   35
l_test_34:
    movl    $0, %eax                #  55:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_test_35:
    movzbl  -29(%ebp), %eax         #  57:     assign v0 <- t5
    movb    %al, v0                

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
