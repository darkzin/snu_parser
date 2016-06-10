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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 14 of <array 23 of <array 77 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $75841, %eax            #   2:     add    t3 <- 75841, 50486
    movl    $50486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t4 <- t3, 74071
    movl    $74071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $14920, %eax            #   4:     if     14920 < t4 goto 3
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f0_5:
    movzbl  -25(%ebp), %eax         #  12:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 89 of <array 70 of <array 25 of <array 49 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 67 of <array 63 of <array 53 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 39 of <array 55 of <array 84 of <array 30 of <array 60 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 54 of <array 71 of <array 57 of <array 60 of <int>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v5       <bool> %ebp-27 ]

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
    jmp     l_f1_exit              
    movl    $99, %eax               #   1:     assign v4 <- 99
    movb    %al, -26(%ebp)         
    movl    $56181, %eax            #   2:     add    t2 <- 56181, 62994
    movl    $62994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t3 <- t2, 83706
    movl    $83706, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t4 <- t3, 63906
    movl    $63906, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $78748, %eax            #   5:     if     78748 <= t4 goto 3
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_3                 
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_5                  #   9:     goto   5
l_f1_4:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f1_5:
    movzbl  -25(%ebp), %eax         #  13:     assign v5 <- t5
    movb    %al, -27(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   8:     return t3
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #  10:     goto   7
l_f2_11_while_cond:
    movl    $16694, %eax            #  12:     if     16694 # 57752 goto 12_while_body
    movl    $57752, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    movl    $97, %eax               #  17:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  19:     return t4
    jmp     l_f2_exit              
    jmp     l_f2_8_while_cond       #  20:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_22                 #  22:     goto   22
    movl    $8454, %eax             #  23:     if     8454 > 32929 goto 21
    movl    $32929, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_21                
    jmp     l_f2_22                 #  24:     goto   22
l_f2_21:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_23                 #  27:     goto   23
l_f2_22:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_23:
    movl    $1, %eax                #  31:     if     1 = t5 goto 17
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_17                
    jmp     l_f2_18                 #  32:     goto   18
l_f2_17:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_19                 #  35:     goto   19
l_f2_18:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_19:
    movzbl  -17(%ebp), %eax         #  39:     return t6
    jmp     l_f2_exit              

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     if     97 # 98 goto 1
    movl    $98, %ebx              
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
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    movl    $97, %eax               #  10:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_9                #  11:     goto   9
l_test_9:
    jmp     l_test_12               #  13:     goto   12
l_test_12:
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
