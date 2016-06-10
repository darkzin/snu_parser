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
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]
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
l_f0_4_while_cond:
    jmp     l_f0_3                  #   1:     goto   3
    jmp     l_f0_4_while_cond       #   2:     goto   4_while_cond
l_f0_3:
    movl    $98, %eax               #   4:     assign v0 <- 98
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t2
    movb    %al, -17(%ebp)         
    jmp     l_f0_0                  #   7:     goto   0
l_f0_0:
    movl    $20906, %eax            #   9:     if     20906 = 42083 goto 9_if_true
    movl    $42083, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_13                 #  12:     goto   13
    jmp     l_f0_14                 #  13:     goto   14
l_f0_13:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_15                 #  16:     goto   15
l_f0_14:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_15:
    movzbl  -14(%ebp), %eax         #  20:     assign v1 <- t3
    movb    %al, -17(%ebp)         
    jmp     l_f0_8                  #  21:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_20_while_cond:
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     if     t4 <= 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_21_while_body     
    jmp     l_f0_19                 #  27:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  29:     goto   20_while_cond
l_f0_19:

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
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_4                  #   3:     goto   4
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_5                  #   5:     goto   5
l_f1_4:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_5:
    movzbl  -15(%ebp), %eax         #   9:     assign v2 <- t4
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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 11 of <array 36 of <array 26 of <array 51 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    jmp     l_f2_4                  #   2:     goto   4
l_f2_4:
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   5:     goto   8_while_cond
    jmp     l_f2_10                 #   6:     goto   10
l_f2_10:
    movl    $1, %eax                #   8:     if     1 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #   9:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  11:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_19_while_cond:
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_25_while_cond:
    jmp     l_f2_25_while_cond      #  23:     goto   25_while_cond
    movl    $1, %eax                #  24:     assign v3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_19_while_cond      #  25:     goto   19_while_cond

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $86680, %eax            #   0:     sub    t0 <- 86680, 80800
    movl    $80800, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_6                #   2:     goto   6
    jmp     l_test_6                #   3:     goto   6
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movl    $1, %eax                #   9:     if     1 = t1 goto 2_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_10               #  12:     goto   10
l_test_10:
l_test_14_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
l_test_17_while_cond:
    movl    $13354, %eax            #  19:     if     13354 = 26256 goto 18_while_body
    movl    $26256, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  20:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
l_test_16:
    jmp     l_test_1                #  24:     goto   1
l_test_3_if_false:
l_test_1:
l_test_21_while_cond:
    jmp     l_test_20               #  28:     goto   20
    jmp     l_test_21_while_cond    #  29:     goto   21_while_cond
l_test_20:

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
