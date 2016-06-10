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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 51 of <array 45 of <array 50 of <array 76 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  10:     goto   6
    jmp     l_f0_6                  #  11:     goto   6
    jmp     l_f0_6                  #  12:     goto   6
l_f0_6:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  15:     goto   8
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  18:     return t4
    jmp     l_f0_exit              
    call    dummyINTfunc            #  19:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   7:     return t2
    jmp     l_f1_exit              
l_f1_9_while_cond:
    jmp     l_f1_10_while_body      #   9:     goto   10_while_body
l_f1_10_while_body:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  12:     goto   12
    jmp     l_f1_13_while_cond      #  13:     goto   13_while_cond
l_f1_12:
    movl    $100, %eax              #  15:     if     100 # 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_16                
    jmp     l_f1_17                 #  16:     goto   17
l_f1_16:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_18:
    movzbl  -14(%ebp), %eax         #  23:     return t3
    jmp     l_f1_exit              
l_f1_21_while_cond:
    movl    $100, %eax              #  25:     if     100 = 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_22_while_body     
    jmp     l_f1_20                 #  26:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  28:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_9_while_cond       #  30:     goto   9_while_cond
    jmp     l_f1_26_if_false        #  31:     goto   26_if_false
    call    dummyBOOLfunc           #  32:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  33:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_24                 #  34:     goto   24
l_f1_26_if_false:
l_f1_24:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f2_1_while_cond:
    movl    $2391, %eax             #   1:     if     2391 # 71462 goto 2_while_body
    movl    $71462, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t1 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    movl    $12102, %eax            #   7:     assign v0 <- 12102
    movl    %eax, v0               
    jmp     l_test_3_while_cond     #   8:     goto   3_while_cond
l_test_2:
l_test_8_while_cond:
    movl    $99, %eax               #  11:     assign v1 <- 99
    movb    %al, v1                
l_test_12_while_cond:
    movl    $99, %eax               #  13:     if     99 >= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    movl    $92435, %eax            #  18:     assign v0 <- 92435
    movl    %eax, v0               
    jmp     l_test_8_while_cond     #  19:     goto   8_while_cond
    movl    $99, %eax               #  20:     assign v1 <- 99
    movb    %al, v1                

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
