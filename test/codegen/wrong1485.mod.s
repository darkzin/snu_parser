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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 51 of <array 80 of <array 4 of <array 61 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    jmp     l_f0_exit              
    movl    $97729, %eax            #   2:     mul    t3 <- 97729, 41530
    movl    $41530, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v2 <- t3
    movl    %eax, 12(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 51 of <array 80 of <array 4 of <array 61 of <array 26 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 84 of <array 4 of <array 64 of <array 22 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 92 of <array 98 of <array 82 of <array 97 of <array 85 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -103534124(%ebp)  103534104  [ $v4       <array 51 of <array 80 of <array 4 of <array 61 of <array 26 of <int>>>>>> %ebp-103534124 ]
    #   -103534128(%ebp)   4  [ $v5       <int> %ebp-103534128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $103534116, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25883529, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-103534124(%ebp)     # local array 'v4': 5 dimensions
    movl    $51,-103534120(%ebp)    #   dimension 1: 51 elements
    movl    $80,-103534116(%ebp)    #   dimension 2: 80 elements
    movl    $4,-103534112(%ebp)     #   dimension 3: 4 elements
    movl    $61,-103534108(%ebp)    #   dimension 4: 61 elements
    movl    $26,-103534104(%ebp)    #   dimension 5: 26 elements

    # function body
    movl    $28776, %eax            #   0:     param  1 <- 28776
    pushl   %eax                   
    leal    -103534124(%ebp), %eax  #   1:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   3:     call   f0
    addl    $8, %esp               
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     assign v3 <- t4
    movb    %al, 16(%ebp)          
l_f1_3_while_cond:
    movl    $97, %eax               #   7:     if     97 = 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_while_body:
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #  13:     goto   12_if_false
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $83460, %eax            #  17:     assign v5 <- 83460
    movl    %eax, -103534128(%ebp) 
    jmp     l_f1_14                 #  18:     goto   14
l_f1_14:
l_f1_18_while_cond:
    movl    $0, %eax                #  21:     if     0 = 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  24:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  27:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $103534116, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #   8:     assign v3 <- 100
    movb    %al, 16(%ebp)          
l_f2_7_while_cond:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_9:
    movl    $0, %eax                #  12:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    movl    $91148, %eax            #   1:     assign v0 <- 91148
    movl    %eax, v0               
    movl    $30344, %eax            #   2:     assign v0 <- 30344
    movl    %eax, v0               
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_7                #   4:     goto   7
l_test_7:
    movl    $52187, %eax            #   6:     assign v0 <- 52187
    movl    %eax, v0               
    jmp     l_test_2                #   7:     goto   2
l_test_2:
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_test_13_while_cond:
    jmp     l_test_12               #  11:     goto   12
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
l_test_17_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  15:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  17:     goto   17_while_cond
l_test_16:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
