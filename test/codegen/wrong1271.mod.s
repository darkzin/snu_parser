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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    jmp     l_f0_5                  #   0:     goto   5
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t3 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   7:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_8                  #   9:     goto   8
l_f0_8:
    movl    $26147, %eax            #  11:     return 26147
    jmp     l_f0_exit              
    movl    $97, %eax               #  12:     if     97 >= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  13:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $67972, %eax            #  18:     return 67972
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  19:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  23:     if     98 <= t4 goto 18
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_18                
    jmp     l_f0_19                 #  24:     goto   19
l_f0_18:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_20                 #  27:     goto   20
l_f0_19:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_20:
    movzbl  -15(%ebp), %eax         #  31:     assign v2 <- t5
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  32:     assign v3 <- 99
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t7       <bool> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]
    #    -24(%ebp)   4  [ $v6       <int> %ebp-24 ]

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
    movl    $5848, %eax             #   0:     add    t3 <- 5848, 75836
    movl    $75836, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v6 <- t3
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t4 # 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_4:
    movzbl  -18(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  13:     if     t6 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7                 
l_f1_7:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -20(%ebp)         
l_f1_9:
    movzbl  -20(%ebp), %eax         #  19:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 32 of <array 100 of <array 83 of <array 57 of <array 29 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 83 of <array 37 of <array 17 of <array 14 of <array 32 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 31 of <array 52 of <array 72 of <array 33 of <array 8 of <int>>>>>>> %ebp+20 ]

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
    movl    $0, %eax                #   0:     param  3 <- 0
    pushl   %eax                   
    movl    $99, %eax               #   1:     param  2 <- 99
    pushl   %eax                   
    movl    $1, %eax                #   2:     param  1 <- 1
    pushl   %eax                   
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   5:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
l_f2_2_while_cond:
    movl    $1, %eax                #   7:     if     1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    movl    $100, %eax              #  10:     if     100 = 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  11:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  18:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -15(%ebp), %eax         #  20:     if     t5 <= t6 goto 10
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_10                
    jmp     l_f2_11                 #  21:     goto   11
l_f2_10:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_12                 #  24:     goto   12
l_f2_11:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f2_12:
    movzbl  -17(%ebp), %eax         #  28:     return t7
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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   4:     if     97 # 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_4               
    jmp     l_test_5                #   5:     goto   5
l_test_4:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_6                #   8:     goto   6
l_test_5:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_6:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    movl    $98, %eax               #  13:     assign v1 <- 98
    movb    %al, v1                
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  15:     goto   10_while_cond
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_14_if_true       #  20:     goto   14_if_true
l_test_14_if_true:
    jmp     l_test_exit            
    jmp     l_test_13               #  23:     goto   13
l_test_13:
    call    dummyINTfunc            #  25:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
