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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 7 of <array 1 of <array 6 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 1 of <array 5 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   6:     return t4
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 7 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
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
    jmp     l_f1_exit              
    movl    $94095, %eax            #   1:     if     94095 < 74876 goto 2_if_true
    movl    $74876, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyINTfunc            #  11:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v3 <- t2
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    movl    $43452, %eax            #   1:     if     43452 < 7515 goto 1
    movl    $7515, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    movl    $100, %eax              #  10:     assign v2 <- 100
    movb    %al, -21(%ebp)         
    jmp     l_f2_9_if_false         #  11:     goto   9_if_false
    jmp     l_f2_9_if_false         #  12:     goto   9_if_false
    movl    $70434, %eax            #  13:     assign v0 <- 70434
    movl    %eax, 8(%ebp)          
    movl    $97, %eax               #  14:     return 97
    jmp     l_f2_exit              
l_f2_14_while_cond:
    jmp     l_f2_13                 #  16:     goto   13
    jmp     l_f2_14_while_cond      #  17:     goto   14_while_cond
l_f2_13:
    movl    $99, %eax               #  19:     assign v2 <- 99
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  20:     assign v2 <- 100
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #  21:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  22:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #  23:     goto   7
l_f2_9_if_false:
l_f2_7:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
l_test_3_while_cond:
    movl    $66213, %eax            #   4:     if     66213 < 772 goto 4_while_body
    movl    $772, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    jmp     l_test_6                #   8:     goto   6
l_test_6:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:
    movl    $40618, %eax            #  12:     div    t1 <- 40618, 17303
    movl    $17303, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v1 <- t1
    movl    %eax, v1               

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
