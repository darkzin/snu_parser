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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 5 of <array 2 of <array 10 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     assign v2 <- 99
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_3_while_cond       #   5:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 9 of <array 5 of <array 2 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -28844(%ebp)  28824  [ $v4       <array 8 of <array 9 of <array 5 of <array 2 of <array 10 of <int>>>>>> %ebp-28844 ]
    #   -28845(%ebp)   1  [ $v5       <char> %ebp-28845 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28836, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7209, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-28844(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-28840(%ebp)         #   dimension 1: 8 elements
    movl    $9,-28836(%ebp)         #   dimension 2: 9 elements
    movl    $5,-28832(%ebp)         #   dimension 3: 5 elements
    movl    $2,-28828(%ebp)         #   dimension 4: 2 elements
    movl    $10,-28824(%ebp)        #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    movl    $7743, %eax             #   1:     return 7743
    jmp     l_f2_exit              
    leal    -28844(%ebp), %eax      #   2:     &()    t6 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   4:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #   5:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   6:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $39710, %eax            #   7:     return 39710
    jmp     l_f2_exit              
    movl    $99, %eax               #   8:     assign v5 <- 99
    movb    %al, -28845(%ebp)      
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
    movl    $99, %eax               #  10:     if     99 # 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    movl    $80549, %eax            #  13:     return 80549
    jmp     l_f2_exit              
    movl    $53959, %eax            #  14:     assign v1 <- 53959
    movl    %eax, 8(%ebp)          
    movl    $67860, %eax            #  15:     return 67860
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $1, %eax                #  19:     assign t9 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_19                 #  20:     goto   19
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -19(%ebp)         
l_f2_19:
    movzbl  -19(%ebp), %eax         #  23:     assign v3 <- t9
    movb    %al, 16(%ebp)          

l_f2_exit:
    # epilogue
    addl    $28836, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]

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
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #   4:     if     100 < 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    movl    $50935, %eax            #   7:     if     50935 > 29090 goto 7
    movl    $29090, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #  11:     goto   9
l_test_8:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  15:     assign v1 <- t1
    movb    %al, v1                
l_test_12_while_cond:
    movl    $0, %eax                #  17:     if     0 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  18:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_test_18_while_cond:
    movl    $6579, %eax             #  25:     if     6579 = 31227 goto 19_while_body
    movl    $31227, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  26:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
    movl    $99, %eax               #  30:     if     99 >= 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_22_if_true      
    jmp     l_test_23_if_false      #  31:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  33:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_2                #  36:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $39167, %eax            #  39:     add    t3 <- 39167, 31632
    movl    $31632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $96471, %eax            #  40:     if     96471 >= t3 goto 26
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_26              
    jmp     l_test_27               #  41:     goto   27
l_test_26:
    movl    $1, %eax                #  43:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_28               #  44:     goto   28
l_test_27:
    movl    $0, %eax                #  46:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_test_28:
    movzbl  -21(%ebp), %eax         #  48:     assign v1 <- t4
    movb    %al, v1                
    call    dummyCHARfunc           #  49:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
