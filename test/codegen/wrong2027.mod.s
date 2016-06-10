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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 29 of <array 92 of <array 9 of <array 20 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 30 of <array 5 of <array 8 of <array 25 of <bool>>>>>>> %ebp+16 ]

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
    movl    $16804, %eax            #   0:     sub    t2 <- 16804, 9784
    movl    $9784, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
    jmp     l_f0_10_if_false        #   6:     goto   10_if_false
    jmp     l_f0_8                  #   7:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  13:     call   t3 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   3:     if     97 = t2 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
l_f1_6_while_cond:
    movl    $97, %eax               #   9:     if     97 >= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_10                 #  14:     goto   10
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $71567, %eax            #   1:     if     71567 >= 27343 goto 2_while_body
    movl    $27343, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $100, %eax              #   4:     if     100 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_12_while_cond:
    jmp     l_f2_11                 #  15:     goto   11
    jmp     l_f2_12_while_cond      #  16:     goto   12_while_cond
l_f2_11:
    movl    $74283, %eax            #  18:     assign v0 <- 74283
    movl    %eax, 8(%ebp)          
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  21:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     assign v2 <- t2
    movb    %al, 16(%ebp)          
l_f2_17_while_cond:
    movl    $99, %eax               #  24:     if     99 # 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_18_while_body     
    jmp     l_f2_16                 #  25:     goto   16
l_f2_18_while_body:
    movl    $98, %eax               #  27:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_17_while_cond      #  28:     goto   17_while_cond
l_f2_16:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 < 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $1, %eax                #   8:     if     1 # 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #  12:     if     99 # 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $95932, %eax            #  18:     assign v0 <- 95932
    movl    %eax, v0               
    jmp     l_test_6                #  19:     goto   6
l_test_8_if_false:
l_test_6:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
