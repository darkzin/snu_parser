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
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyProcedure          #   3:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 > 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   8:     assign v1 <- t9
    movb    %al, -15(%ebp)         
    jmp     l_f1_7_if_false         #   9:     goto   7_if_false
    movl    $98, %eax               #  10:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  12:     assign v1 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $98, %eax               #  16:     if     98 > 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11                
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $1, %eax                #  19:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_13                 #  20:     goto   13
l_f1_12:
    movl    $0, %eax                #  22:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_13:
    movzbl  -13(%ebp), %eax         #  24:     assign v1 <- t10
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    ReadInt                 #   3:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f2_6_while_cond:
    movl    $0, %eax                #   5:     if     0 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    movl    $1, %eax                #   9:     if     1 = 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
l_f2_9:
    movl    $87251, %eax            #  14:     assign v2 <- 87251
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #  15:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #  21:     if     99 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  22:     goto   17_if_false
l_f2_16_if_true:
    movl    $99, %eax               #  24:     if     99 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  25:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  27:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_23                 #  30:     goto   23
l_f2_23:
    jmp     l_f2_15                 #  32:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_27_while_cond:
    jmp     l_f2_26                 #  36:     goto   26
    jmp     l_f2_26                 #  37:     goto   26
    jmp     l_f2_26                 #  38:     goto   26
    jmp     l_f2_27_while_cond      #  39:     goto   27_while_cond
l_f2_26:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t8       <bool> %ebp-39 ]

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
    movl    $57546, %eax            #   0:     mul    t0 <- 57546, 17190
    movl    $17190, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 41416
    movl    $41416, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 64828
    movl    $64828, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 83388
    movl    $83388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 23938
    movl    $23938, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v0 <- t4
    movl    %eax, v0               
    jmp     l_test_exit            
    call    ReadInt                 #   7:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_exit            
    movl    $97, %eax               #   9:     if     97 >= 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5               
    jmp     l_test_6                #  10:     goto   6
l_test_5:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_7                #  13:     goto   7
l_test_6:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_7:
    movzbl  -37(%ebp), %eax         #  17:     assign v1 <- t6
    movb    %al, v1                
    call    dummyCHARfunc           #  18:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $98, %eax               #  19:     if     98 >= t7 goto 10
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_10              
    jmp     l_test_11               #  20:     goto   11
l_test_10:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_test_12               #  23:     goto   12
l_test_11:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -39(%ebp)         
l_test_12:
    movzbl  -39(%ebp), %eax         #  27:     assign v1 <- t8
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
