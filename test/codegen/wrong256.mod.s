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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     return 98
    jmp     l_f0_exit              
    movl    $85753, %eax            #   2:     assign v3 <- 85753
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #   3:     assign v2 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_8_if_false         #   4:     goto   8_if_false
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #   6:     goto   10_while_cond
    movl    $73672, %eax            #   7:     assign v3 <- 73672
    movl    %eax, -20(%ebp)        
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
    jmp     l_f0_17                 #  13:     goto   17
    jmp     l_f0_17                 #  14:     goto   17
    jmp     l_f0_15_if_true         #  15:     goto   15_if_true
l_f0_17:
l_f0_15_if_true:
    jmp     l_f0_14                 #  18:     goto   14
l_f0_14:
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t4 <= 97 goto 21_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  22:     goto   22_if_false
l_f0_21_if_true:
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  25:     goto   20
l_f0_22_if_false:
l_f0_20:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 4 of <array 5 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 8 of <array 3 of <array 8 of <array 1 of <array 7 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $22122, %eax            #   6:     return 22122
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   7:     goto   0
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $196, %eax              #  10:     sub    t5 <- 196, 93245
    movl    $93245, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 1 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]

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
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   7:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t4 < 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   9:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  11:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   2:     if     100 >= 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $1, %eax                #   5:     assign v0 <- 1
    movb    %al, v0                
    movl    $41153, %eax            #   6:     assign v1 <- 41153
    movl    %eax, v1               
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  13:     goto   12_while_body
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    call    dummyINTfunc            #  16:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
