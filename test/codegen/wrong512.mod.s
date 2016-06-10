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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
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
    movl    $99, %eax               #   0:     if     99 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $93916, %eax            #   7:     add    t2 <- 93916, 68123
    movl    $68123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_8_while_body       #  10:     goto   8_while_body
    jmp     l_f0_6                  #  11:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  13:     goto   7_while_cond
l_f0_6:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 3 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    movl    $98, %eax               #   1:     if     98 <= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t1
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  10:     assign v2 <- 98
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_2                  #   2:     goto   2
l_f2_5:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, -18(%ebp)         
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
    movl    $60419, %eax            #   1:     if     60419 # 49714 goto 2_if_true
    movl    $49714, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $88809, %eax            #   5:     if     88809 = 43681 goto 7_while_body
    movl    $43681, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
l_test_9:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
    movl    $99, %eax               #  19:     if     99 # 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
l_test_20_while_cond:
    call    dummyCHARfunc           #  26:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  27:     if     t0 > 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_21_while_body   
    jmp     l_test_19               #  28:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  30:     goto   20_while_cond
l_test_19:

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
