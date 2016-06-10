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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 8 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #    -14(%ebp)   1  [ $v5       <char> %ebp-14 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t5 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $99, %eax               #   8:     assign v5 <- 99
    movb    %al, -14(%ebp)         

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 2 of <array 10 of <array 9 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -37(%ebp)   1  [ $v4       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v4 <- 100
    movb    %al, -37(%ebp)         
    movl    $99, %eax               #   1:     assign v4 <- 99
    movb    %al, -37(%ebp)         
l_f1_3_while_cond:
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t6 <- t5, 71275
    movl    $71275, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t7 <- t6, 86468
    movl    $86468, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t8 <- t7, 82163
    movl    $82163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     sub    t9 <- t8, 39090
    movl    $39090, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     sub    t10 <- t9, 26186
    movl    $26186, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t10 >= 8985 goto 4_while_body
    movl    $8985, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 9 of <array 8 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 8 of <array 5 of <array 9 of <array 3 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 3 of <array 10 of <array 8 of <array 4 of <array 5 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
    call    ReadInt                 #   4:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $0, %eax                #   2:     if     0 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $63731, %eax            #   5:     if     63731 # 94171 goto 6_if_true
    movl    $94171, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
    jmp     l_test_9                #   9:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
l_test_13_while_cond:
    movl    $51680, %eax            #  19:     div    t1 <- 51680, 10477
    movl    $10477, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t1 < 79112 goto 14_while_body
    movl    $79112, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  21:     goto   12
l_test_14_while_body:
    movl    $100, %eax              #  23:     if     100 < 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_17              
    jmp     l_test_18               #  24:     goto   18
l_test_17:
    movl    $1, %eax                #  26:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_19               #  27:     goto   19
l_test_18:
    movl    $0, %eax                #  29:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_19:
    movzbl  -21(%ebp), %eax         #  31:     assign v1 <- t2
    movb    %al, v1                
    movl    $4484, %eax             #  32:     assign v2 <- 4484
    movl    %eax, v2               
    jmp     l_test_13_while_cond    #  33:     goto   13_while_cond
l_test_12:
    movl    $1, %eax                #  35:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_28               #  36:     goto   28
    movl    $0, %eax                #  37:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_28:
    movzbl  -22(%ebp), %eax         #  39:     if     t3 # 0 goto 23_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23_if_true      
    jmp     l_test_24_if_false      #  40:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  42:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            
    movl    $1, %eax                #  46:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_34               #  47:     goto   34
    movl    $0, %eax                #  48:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_34:
    movzbl  -23(%ebp), %eax         #  50:     assign v1 <- t4
    movb    %al, v1                

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
