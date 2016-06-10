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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]

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
    jmp     l_f0_exit              
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
    movl    $100, %eax              #  10:     if     100 <= 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  11:     goto   13
l_f0_12:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  14:     goto   14
l_f0_13:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    movzbl  -13(%ebp), %eax         #  18:     assign v3 <- t4
    movb    %al, -26(%ebp)         
    movl    $26122, %eax            #  19:     if     26122 < 46928 goto 17_if_true
    movl    $46928, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  22:     goto   16
l_f0_18_if_false:
l_f0_16:
l_f0_21_while_cond:
    movl    $72036, %eax            #  26:     if     72036 > 18584 goto 22_while_body
    movl    $18584, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_22_while_body     
    jmp     l_f0_20                 #  27:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_1                  #  31:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyINTfunc            #  34:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     mul    t6 <- t5, 99001
    movl    $99001, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $345, %eax              #  36:     if     345 <= t6 goto 25
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_25                
    jmp     l_f0_26                 #  37:     goto   26
l_f0_25:
    movl    $1, %eax                #  39:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_27                 #  40:     goto   27
l_f0_26:
    movl    $0, %eax                #  42:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_27:
    movzbl  -25(%ebp), %eax         #  44:     assign v3 <- t7
    movb    %al, -26(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 9 of <array 5 of <array 3 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $1, %eax                #   2:     if     1 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_1                  #   3:     goto   1
l_f1_6:
    jmp     l_f1_1                  #   5:     goto   1
    jmp     l_f1_1                  #   6:     goto   1
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $82325, %eax            #   0:     assign v0 <- 82325
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_4_if_false         #   2:     goto   4_if_false
l_f2_6_while_cond:
    movl    $100, %eax              #   4:     if     100 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $21459, %eax            #   9:     if     21459 = 74995 goto 10_if_true
    movl    $74995, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  10:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $81496, %eax            #  15:     return 81496
    jmp     l_f2_exit              
l_f2_15_while_cond:
    jmp     l_f2_16_while_body      #  17:     goto   16_while_body
    jmp     l_f2_16_while_body      #  18:     goto   16_while_body
    jmp     l_f2_16_while_body      #  19:     goto   16_while_body
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_2                  #  24:     goto   2
l_f2_4_if_false:
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $26652, %eax            #   2:     add    t1 <- 26652, 97477
    movl    $97477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 97963
    movl    $97963, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 53179
    movl    $53179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyProcedure          #   6:     call   dummyProcedure

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
