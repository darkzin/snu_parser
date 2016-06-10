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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 89 of <array 63 of <array 14 of <array 44 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 >= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_1:
    movl    $0, %eax                #   7:     if     0 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_15_while_cond:
    movl    $91562, %eax            #  15:     if     91562 # 61468 goto 16_while_body
    movl    $61468, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  16:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  18:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_18                 #  20:     goto   18
l_f0_18:
    call    dummyCHARfunc           #  22:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  23:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  25:     goto   5
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]

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
    movl    $99, %eax               #   0:     if     99 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $57794, %eax            #   8:     if     57794 # 24266 goto 7_if_true
    movl    $24266, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $58917, %eax            #  18:     if     58917 <= 97899 goto 14
    movl    $97899, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14                
    jmp     l_f1_15                 #  19:     goto   15
l_f1_14:
    movl    $1, %eax                #  21:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  22:     goto   16
l_f1_15:
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  26:     assign v0 <- t2
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 25 of <array 97 of <array 44 of <array 89 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   3:     return t3
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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_1                #   2:     goto   1
l_test_4:
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_7                #  13:     goto   7
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  15:     goto   12_while_body
    jmp     l_test_12_while_body    #  16:     goto   12_while_body
    jmp     l_test_12_while_body    #  17:     goto   12_while_body
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
    jmp     l_test_8_while_cond     #  20:     goto   8_while_cond
l_test_7:
l_test_18_while_cond:
    jmp     l_test_17               #  23:     goto   17
    movl    $30690, %eax            #  24:     if     30690 = 48234 goto 21_if_true
    movl    $48234, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  25:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  27:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  32:     goto   18_while_cond
l_test_17:

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
