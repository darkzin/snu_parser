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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 10 of <array 5 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $97, %eax               #   0:     if     97 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  12:     goto   16_while_cond
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  14:     goto   12
l_f0_12:
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 4 of <array 1 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 8 of <array 8 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 # 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_3                 
    jmp     l_f1_4                  #   3:     goto   4
l_f1_3:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_5                  #   6:     goto   5
l_f1_4:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_5:
    movzbl  -14(%ebp), %eax         #  10:     assign v3 <- t2
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t1 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  13:     if     97 > t2 goto 10
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_10                
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_12:
    movzbl  -15(%ebp), %eax         #  21:     assign v0 <- t3
    movb    %al, -21(%ebp)         
    movl    $25346, %eax            #  22:     div    t4 <- 25346, 98286
    movl    $98286, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     assign v1 <- t4
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    jmp     l_test_exit            
    call    dummyProcedure          #   7:     call   dummyProcedure
l_test_12_while_cond:
    movl    $97, %eax               #   9:     if     97 # 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13_while_body   
    jmp     l_test_11               #  10:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
l_test_11:
    jmp     l_test_7                #  14:     goto   7
l_test_7:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  17:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     assign v0 <- t0
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
