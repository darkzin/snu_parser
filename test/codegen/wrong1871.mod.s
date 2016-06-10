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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $99646, %eax            #   4:     if     99646 >= 79436 goto 7_while_body
    movl    $79436, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    movl    $0, %eax                #   9:     if     0 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  16:     goto   13
    jmp     l_f0_14_while_cond      #  17:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_1                  #  19:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v1 <- t1
    movb    %al, -14(%ebp)         
    movl    $72626, %eax            #   3:     assign v0 <- 72626
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    movl    $99, %eax               #   3:     return 99
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   5:     goto   8_while_cond
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t1
    jmp     l_f2_exit              
    call    ReadInt                 #  10:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_1                #   4:     goto   1
l_test_5:
    jmp     l_test_1                #   6:     goto   1
    jmp     l_test_1                #   7:     goto   1
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
    jmp     l_test_exit            
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
l_test_17_while_cond:
    movl    $29413, %eax            #  17:     if     29413 > 45869 goto 18_while_body
    movl    $45869, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_while_body   
    jmp     l_test_16               #  18:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  20:     goto   17_while_cond
l_test_16:
    jmp     l_test_22_if_false      #  22:     goto   22_if_false
    jmp     l_test_20               #  23:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $100, %eax              #  26:     if     100 <= 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  27:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  29:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $1, %eax                #  32:     assign v0 <- 1
    movb    %al, v0                
    movl    $98, %eax               #  33:     if     98 > 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_29_if_true      
    jmp     l_test_30_if_false      #  34:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  36:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_13               #  39:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
