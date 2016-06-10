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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 1 of <array 34 of <array 25 of <array 64 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 52 of <array 6 of <array 80 of <array 77 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_exit              
    movl    $95365, %eax            #   3:     assign v2 <- 95365
    movl    %eax, -20(%ebp)        
    jmp     l_f0_6                  #   4:     goto   6
l_f0_6:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_11_while_cond:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     if     t3 >= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  14:     goto   11_while_cond
l_f0_10:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 11 of <array 6 of <array 3 of <array 20 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 96 of <array 38 of <array 94 of <array 73 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
    call    ReadInt                 #   4:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t5 <- t4, 55181
    movl    $55181, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t5
    jmp     l_f1_exit              
l_f1_7_while_cond:
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     if     t6 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11                
    jmp     l_f1_6                  #  10:     goto   6
l_f1_11:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 84 of <array 39 of <array 42 of <array 44 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]
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
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    movl    $97, %eax               #   8:     if     97 <= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    movl    $99, %eax               #  11:     assign v1 <- 99
    movb    %al, -15(%ebp)         
    movl    $1, %eax                #  12:     assign v2 <- 1
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  14:     return 97
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  15:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
l_f2_15_while_cond:
    movl    $97, %eax               #  19:     if     97 >= 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  20:     goto   19_if_false
l_f2_18_if_true:
    movl    $0, %eax                #  22:     assign v2 <- 0
    movb    %al, -16(%ebp)         
l_f2_23_while_cond:
    movl    $98, %eax               #  24:     if     98 <= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_24_while_body     
    jmp     l_f2_22                 #  25:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  27:     goto   23_while_cond
l_f2_22:
    call    dummyProcedure          #  29:     call   dummyProcedure
    jmp     l_f2_17                 #  30:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_15_while_cond      #  33:     goto   15_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t1 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $0, %eax                #  11:     assign v1 <- 0
    movb    %al, v1                

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
