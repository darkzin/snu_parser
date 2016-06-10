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
    #    -16(%ebp)   4  [ $v0       <int> %ebp-16 ]

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
    movl    $97, %eax               #   1:     if     97 <= 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_exit              
l_f0_9_while_cond:
    movl    $100, %eax              #   9:     if     100 < 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    movl    $98, %eax               #  14:     if     98 >= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_1_while_cond       #  20:     goto   1_while_cond
l_f0_17_while_cond:
    movl    $77783, %eax            #  22:     assign v0 <- 77783
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_17_while_cond      #  24:     goto   17_while_cond
    jmp     l_f0_exit              

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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 2 of <array 2 of <array 1 of <array 2 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $99, %eax               #   0:     if     99 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyProcedure          #   6:     call   dummyProcedure
    call    f0                      #   7:     call   f0

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 2 of <array 2 of <array 1 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 4 of <array 2 of <array 1 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 1 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 1 of <array 10 of <array 4 of <array 4 of <int>>>>>>> %ebp+20 ]
    #   -124(%ebp)  104  [ $v4       <array 10 of <array 2 of <array 2 of <array 1 of <array 2 of <bool>>>>>> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-124(%ebp)           # local array 'v4': 5 dimensions
    movl    $10,-120(%ebp)          #   dimension 1: 10 elements
    movl    $2,-116(%ebp)           #   dimension 2: 2 elements
    movl    $2,-112(%ebp)           #   dimension 3: 2 elements
    movl    $1,-108(%ebp)           #   dimension 4: 1 elements
    movl    $2,-104(%ebp)           #   dimension 5: 2 elements

    # function body
    leal    -124(%ebp), %eax        #   0:     &()    t1 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  10:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $112, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_6_while_cond:
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   6:     if     98 > t0 goto 7_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
