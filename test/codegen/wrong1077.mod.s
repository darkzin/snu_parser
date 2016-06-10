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
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 61 of <array 3 of <array 5 of <array 18 of <int>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_8_while_cond:
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  12:     if     99 <= t5 goto 9_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  13:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 78 of <array 94 of <array 82 of <array 76 of <array 35 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 66 of <array 87 of <array 98 of <array 47 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 40 of <array 65 of <array 29 of <array 66 of <char>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $0, %eax                #   5:     if     0 > 87506 goto 5_if_true
    movl    $87506, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    movl    $68607, %eax            #   8:     if     68607 # 59479 goto 9_if_true
    movl    $59479, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyINTfunc            #  14:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  15:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  16:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  17:     goto   15
l_f1_15:
    movl    $52780, %eax            #  19:     assign v3 <- 52780
    movl    %eax, -28(%ebp)        
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_f1_4                  #  21:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $33838, %eax            #  24:     if     33838 = 99972 goto 21_if_true
    movl    $99972, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  25:     goto   22_if_false
l_f1_21_if_true:
    call    dummyINTfunc            #  27:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $90552, %eax            #  28:     assign v3 <- 90552
    movl    %eax, -28(%ebp)        
    jmp     l_f1_20                 #  29:     goto   20
l_f1_22_if_false:
l_f1_20:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 22 of <array 53 of <array 2 of <array 35 of <bool>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 23570
    movl    $23570, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
    movl    $97259, %eax            #   3:     sub    t6 <- 97259, 32260
    movl    $32260, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t6
    jmp     l_f2_exit              
    call    dummyINTfunc            #   5:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
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
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_5                #   2:     goto   5
l_test_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   9:     if     t0 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #  10:     goto   0
l_test_2_while_body:
    movl    $61782, %eax            #  12:     if     61782 <= 39000 goto 12_if_true
    movl    $39000, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_1_while_cond     #  18:     goto   1_while_cond
l_test_0:
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_22_if_false      #  23:     goto   22_if_false
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
l_test_24_while_cond:
    jmp     l_test_23               #  28:     goto   23
    jmp     l_test_24_while_cond    #  29:     goto   24_while_cond
l_test_23:
    movl    $100, %eax              #  31:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  32:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_15               #  33:     goto   15
l_test_17_if_false:
l_test_15:
    call    ReadInt                 #  36:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_29_while_cond:
    call    dummyCHARfunc           #  38:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  39:     if     97 = t2 goto 30_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_30_while_body   
    jmp     l_test_28               #  40:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  42:     goto   29_while_cond
l_test_28:
    jmp     l_test_34               #  44:     goto   34
    movl    $1, %eax                #  45:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_35               #  46:     goto   35
l_test_34:
    movl    $0, %eax                #  48:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_35:
    movzbl  -22(%ebp), %eax         #  50:     assign v0 <- t3
    movb    %al, v0                
    movl    $38777, %eax            #  51:     assign v1 <- 38777
    movl    %eax, v1               

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
