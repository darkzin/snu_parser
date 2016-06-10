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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, 16(%ebp)          
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #   3:     goto   5
l_f0_5:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t3 # t4 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    call    ReadInt                 #  14:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t6 <- t5, 83209
    movl    $83209, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_8_if_false         #   4:     goto   8_if_false
    jmp     l_f1_6                  #   5:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
l_f1_10_while_cond:
    jmp     l_f1_11_while_body      #  11:     goto   11_while_body
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    call    dummyCHARfunc           #  17:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    movl    $100, %eax              #   1:     if     100 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $81430, %eax            #   5:     assign v1 <- 81430
    movl    %eax, 8(%ebp)          
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_10_if_true         #  10:     goto   10_if_true
    jmp     l_f2_10_if_true         #  11:     goto   10_if_true
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  15:     goto   16_while_cond
    jmp     l_f2_18                 #  16:     goto   18
l_f2_18:
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    movl    $98, %eax               #   0:     if     98 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_10_while_cond:
    movl    $97, %eax               #  12:     if     97 # 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  13:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  15:     goto   10_while_cond
l_test_9:
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  20:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
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
