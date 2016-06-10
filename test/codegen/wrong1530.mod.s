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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    movl    $98, %eax               #   0:     if     98 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   3:     assign v0 <- 98
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #   4:     assign v0 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_7_while_cond:
    movl    $53353, %eax            #   9:     if     53353 <= 62351 goto 8_while_body
    movl    $62351, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
    jmp     l_f0_10                 #  12:     goto   10
l_f0_10:
    movl    $75005, %eax            #  14:     if     75005 > 63739 goto 14_if_true
    movl    $63739, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  15:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_7_while_cond       #  20:     goto   7_while_cond
l_f0_6:
    movl    $1, %eax                #  22:     if     1 = 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  23:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_23_if_false        #  25:     goto   23_if_false
    jmp     l_f0_21                 #  26:     goto   21
l_f0_23_if_false:
l_f0_21:
    movl    $17185, %eax            #  29:     if     17185 >= 27194 goto 25
    movl    $27194, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25                
    jmp     l_f0_26                 #  30:     goto   26
l_f0_25:
    movl    $1, %eax                #  32:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_27                 #  33:     goto   27
l_f0_26:
    movl    $0, %eax                #  35:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_27:
    movzbl  -13(%ebp), %eax         #  37:     assign v1 <- t4
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  38:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_17                 #  39:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 60 of <array 3 of <array 98 of <array 73 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $99, %eax               #   3:     assign v1 <- 99
    movb    %al, -14(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
    jmp     l_f1_9_if_true          #   9:     goto   9_if_true
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    movl    $34280, %eax            #  12:     assign v2 <- 34280
    movl    %eax, -20(%ebp)        
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 80 of <array 60 of <array 3 of <array 98 of <array 73 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 5 of <array 58 of <array 31 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -103017644(%ebp)  103017624  [ $v4       <array 80 of <array 60 of <array 3 of <array 98 of <array 73 of <bool>>>>>> %ebp-103017644 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $103017632, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25754408, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-103017644(%ebp)     # local array 'v4': 5 dimensions
    movl    $80,-103017640(%ebp)    #   dimension 1: 80 elements
    movl    $60,-103017636(%ebp)    #   dimension 2: 60 elements
    movl    $3,-103017632(%ebp)     #   dimension 3: 3 elements
    movl    $98,-103017628(%ebp)    #   dimension 4: 98 elements
    movl    $73,-103017624(%ebp)    #   dimension 5: 73 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
    movl    $100, %eax              #   2:     return 100
    jmp     l_f2_exit              
    movl    $100, %eax              #   3:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -103017644(%ebp), %eax  #   7:     &()    t4 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   9:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
l_f2_8_while_cond:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $97, %eax               #  13:     if     97 >= t6 goto 9_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_9_while_body      
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  16:     goto   8_while_cond
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $103017632, %esp        # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movl    $100, %eax              #   0:     if     100 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $35023, %eax            #   3:     if     35023 >= 88989 goto 5_if_true
    movl    $88989, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyINTfunc            #   9:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    ReadInt                 #  11:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  15:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_15               #  17:     goto   15
    jmp     l_test_15               #  18:     goto   15
    jmp     l_test_15               #  19:     goto   15
    jmp     l_test_15               #  20:     goto   15
    jmp     l_test_15               #  21:     goto   15
    jmp     l_test_15               #  22:     goto   15
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_16               #  24:     goto   16
l_test_15:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_16:
    movzbl  -22(%ebp), %eax         #  28:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
