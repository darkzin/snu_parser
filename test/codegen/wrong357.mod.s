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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #   7:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_6_if_true          #   8:     goto   6_if_true
    jmp     l_f0_6_if_true          #   9:     goto   6_if_true
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
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
    movl    $98, %eax               #   0:     if     98 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $54660, %eax            #   4:     if     54660 <= 40802 goto 6_if_true
    movl    $40802, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    movl    $0, %eax                #   7:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  14:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     if     t1 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_12                 #  16:     goto   12
l_f1_16:
    jmp     l_f1_12                 #  18:     goto   12
    jmp     l_f1_12                 #  19:     goto   12
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_13                 #  21:     goto   13
l_f1_12:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f1_13:
    movzbl  -15(%ebp), %eax         #  25:     return t2
    jmp     l_f1_exit              
    movl    $0, %eax                #  26:     assign v1 <- 0
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 8 of <array 2 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
l_f2_9_while_cond:
    jmp     l_f2_8                  #  12:     goto   8
    movl    $100, %eax              #  13:     return 100
    jmp     l_f2_exit              
l_f2_13_while_cond:
    movl    $4215, %eax             #  15:     if     4215 >= 66625 goto 14_while_body
    movl    $66625, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_while_body     
    jmp     l_f2_12                 #  16:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_18_if_false        #  20:     goto   18_if_false
    jmp     l_f2_21_if_false        #  21:     goto   21_if_false
    jmp     l_f2_19                 #  22:     goto   19
l_f2_21_if_false:
l_f2_19:
    call    dummyBOOLfunc           #  25:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  26:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_9_while_cond       #  29:     goto   9_while_cond
l_f2_8:
    movl    $99, %eax               #  31:     if     99 = 100 goto 29_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_29_if_true        
    jmp     l_f2_30_if_false        #  32:     goto   30_if_false
l_f2_29_if_true:
    jmp     l_f2_28                 #  34:     goto   28
l_f2_30_if_false:
l_f2_28:
    jmp     l_f2_23                 #  37:     goto   23
l_f2_23:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
l_test_1_if_true:
    jmp     l_test_0                #   2:     goto   0
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $97, %eax               #   9:     if     97 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  10:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  12:     goto   13_while_cond
l_test_12:
    movl    $100, %eax              #  14:     if     100 >= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  15:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  17:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_8                #  20:     goto   8
l_test_8:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
