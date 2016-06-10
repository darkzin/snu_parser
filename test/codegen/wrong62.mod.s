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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 7 of <char>>>>>>> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
    jmp     l_f0_1_if_true          #   2:     goto   1_if_true
    jmp     l_f0_1_if_true          #   3:     goto   1_if_true
    jmp     l_f0_1_if_true          #   4:     goto   1_if_true
    jmp     l_f0_1_if_true          #   5:     goto   1_if_true
    jmp     l_f0_2_if_false         #   6:     goto   2_if_false
l_f0_1_if_true:
    movl    $97, %eax               #   8:     if     97 <= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_11                
    jmp     l_f0_12                 #   9:     goto   12
l_f0_11:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_13                 #  12:     goto   13
l_f0_12:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_13:
    movzbl  -13(%ebp), %eax         #  16:     assign v1 <- t2
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  17:     if     100 <= 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_16                
    jmp     l_f0_17                 #  18:     goto   17
l_f0_16:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_18                 #  21:     goto   18
l_f0_17:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_18:
    movzbl  -14(%ebp), %eax         #  25:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  26:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $94676, %eax            #  29:     if     94676 = 81894 goto 24
    movl    $81894, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_24                
    jmp     l_f0_22                 #  30:     goto   22
l_f0_24:
    jmp     l_f0_22                 #  32:     goto   22
    movl    $1, %eax                #  33:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_23                 #  34:     goto   23
l_f0_22:
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_23:
    movzbl  -15(%ebp), %eax         #  38:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_28_if_false        #  39:     goto   28_if_false
    movl    $1919, %eax             #  40:     if     1919 >= 32678 goto 30_if_true
    movl    $32678, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_30_if_true        
    jmp     l_f0_31_if_false        #  41:     goto   31_if_false
l_f0_30_if_true:
    jmp     l_f0_29                 #  43:     goto   29
l_f0_31_if_false:
l_f0_29:
    movl    $0, %eax                #  46:     assign v1 <- 0
    movb    %al, -17(%ebp)         
    movl    $5276, %eax             #  47:     if     5276 <= 81492 goto 35
    movl    $81492, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_35                
    jmp     l_f0_36                 #  48:     goto   36
l_f0_35:
    movl    $1, %eax                #  50:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_37                 #  51:     goto   37
l_f0_36:
    movl    $0, %eax                #  53:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_37:
    movzbl  -16(%ebp), %eax         #  55:     assign v1 <- t5
    movb    %al, -17(%ebp)         
    jmp     l_f0_26                 #  56:     goto   26
l_f0_28_if_false:
l_f0_26:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #   -10628(%ebp)  10608  [ $v3       <array 3 of <array 9 of <array 7 of <array 8 of <array 7 of <char>>>>>> %ebp-10628 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10616, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2654, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10628(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-10624(%ebp)         #   dimension 1: 3 elements
    movl    $9,-10620(%ebp)         #   dimension 2: 9 elements
    movl    $7,-10616(%ebp)         #   dimension 3: 7 elements
    movl    $8,-10612(%ebp)         #   dimension 4: 8 elements
    movl    $7,-10608(%ebp)         #   dimension 5: 7 elements

    # function body
    movl    $99, %eax               #   0:     return 99
    jmp     l_f1_exit              
    movl    $74284, %eax            #   1:     assign v1 <- 74284
    movl    %eax, 12(%ebp)         
    leal    -10628(%ebp), %eax      #   2:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t3 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   6:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $10616, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 6 of <array 9 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 4 of <array 7 of <array 7 of <array 2 of <int>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <char> %ebp-18 ]

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
    movl    $100, %eax              #   0:     assign v4 <- 100
    movb    %al, -18(%ebp)         
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_6                  #   3:     goto   6
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movl    $0, %eax                #  11:     if     0 = t3 goto 4_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #  12:     goto   2
l_f2_4_while_body:
l_f2_12_while_cond:
    movl    $27123, %eax            #  15:     if     27123 # 2193 goto 13_while_body
    movl    $2193, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  16:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  18:     goto   12_while_cond
l_f2_11:
    movl    $100, %eax              #  20:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_3_while_cond       #  22:     goto   3_while_cond
l_f2_2:

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
    jmp     l_test_4                #   0:     goto   4
l_test_4:
    jmp     l_test_0                #   2:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $1, %eax                #   5:     if     1 # 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #   6:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #   9:     goto   13_while_cond
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_17_while_cond:
    movl    $57350, %eax            #  12:     if     57350 # 39099 goto 18_while_body
    movl    $39099, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  13:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  15:     goto   17_while_cond
l_test_16:
l_test_21_while_cond:
    movl    $100, %eax              #  18:     if     100 < 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_while_body   
    jmp     l_test_20               #  19:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  21:     goto   21_while_cond
l_test_20:
    jmp     l_test_8                #  23:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyBOOLfunc           #  26:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyProcedure          #  27:     call   dummyProcedure

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
