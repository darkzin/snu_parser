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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 9 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    movl    $30182, %eax            #   5:     assign v4 <- 30182
    movl    %eax, -28(%ebp)        
    leal    _str_1, %eax            #   6:     &()    t8 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  16:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f0_14_while_cond:
    movl    $100, %eax              #  18:     if     100 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_while_body:
    call    dummyBOOLfunc           #  21:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  22:     if     97 # 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_19                
    jmp     l_f0_20                 #  23:     goto   20
l_f0_19:
    movl    $1, %eax                #  25:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_21                 #  26:     goto   21
l_f0_20:
    movl    $0, %eax                #  28:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_21:
    movzbl  -14(%ebp), %eax         #  30:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_14_while_cond      #  31:     goto   14_while_cond
l_f0_13:

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   5:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $6835, %eax             #   6:     if     6835 <= 5248 goto 6
    movl    $5248, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  14:     assign v2 <- t9
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 4 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
    call    ReadInt                 #  10:     call   t9 <- ReadInt
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]

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
    movl    $82088, %eax            #   0:     mul    t0 <- 82088, 14707
    movl    $14707, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 83566
    movl    $83566, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 <= 7571 goto 1_if_true
    movl    $7571, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    movl    $98, %eax               #   5:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_9                #  10:     goto   9
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_11               #  14:     goto   11
l_test_10:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_11:
    movl    $0, %eax                #  18:     if     0 = t2 goto 7_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  19:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  21:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  24:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movl    $100, %eax              #  26:     if     100 = t4 goto 17
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_18               #  27:     goto   18
l_test_17:
    movl    $1, %eax                #  29:     assign t5 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_test_19               #  30:     goto   19
l_test_18:
    movl    $0, %eax                #  32:     assign t5 <- 0
    movb    %al, -24(%ebp)         
l_test_19:
    movzbl  -24(%ebp), %eax         #  34:     assign v1 <- t5
    movb    %al, v1                
l_test_22_while_cond:
    movl    $100, %eax              #  36:     if     100 # 98 goto 23_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_23_while_body   
    jmp     l_test_21               #  37:     goto   21
l_test_23_while_body:
    call    dummyCHARfunc           #  39:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_test_27_while_cond:
    jmp     l_test_26               #  41:     goto   26
    jmp     l_test_27_while_cond    #  42:     goto   27_while_cond
l_test_26:
    call    dummyCHARfunc           #  44:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_test_22_while_cond    #  45:     goto   22_while_cond
l_test_21:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
