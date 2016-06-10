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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 5 of <array 4 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
    movl    $36473, %eax            #   5:     mul    t2 <- 36473, 54074
    movl    $54074, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t3 <- t2, 23299
    movl    $23299, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t4 <- t3, 48409
    movl    $48409, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     div    t5 <- t4, 52738
    movl    $52738, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     assign v3 <- t5
    movl    %eax, -36(%ebp)        
l_f0_6_while_cond:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  12:     goto   12_while_cond
    movl    $98, %eax               #  13:     if     98 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  14:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  16:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    movl    $31271, %eax            #  20:     if     31271 = 68000 goto 20_while_body
    movl    $68000, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_20_while_body     
    jmp     l_f0_18                 #  21:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  23:     goto   19_while_cond
l_f0_18:
    movl    $98, %eax               #  25:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f0_23                 #  26:     goto   23
l_f0_23:
    jmp     l_f0_8                  #  28:     goto   8
l_f0_8:
    jmp     l_f0_6_while_cond       #  30:     goto   6_while_cond

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 10 of <array 5 of <array 4 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 3 of <array 10 of <array 8 of <int>>>>>>> %ebp+12 ]
    #   -9648(%ebp)  9624  [ $v2       <array 4 of <array 10 of <array 5 of <array 4 of <array 3 of <int>>>>>> %ebp-9648 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9636, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2409, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9648(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-9644(%ebp)          #   dimension 1: 4 elements
    movl    $10,-9640(%ebp)         #   dimension 2: 10 elements
    movl    $5,-9636(%ebp)          #   dimension 3: 5 elements
    movl    $4,-9632(%ebp)          #   dimension 4: 4 elements
    movl    $3,-9628(%ebp)          #   dimension 5: 3 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
l_f1_6_while_cond:
    movl    $21085, %eax            #   5:     if     21085 = 68735 goto 7_while_body
    movl    $68735, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $84004, %eax            #  13:     if     84004 # 85122 goto 11_if_true
    movl    $85122, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
l_f1_11_if_true:
    movl    $97, %eax               #  16:     param  2 <- 97
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  1 <- 100
    pushl   %eax                   
    leal    -9648(%ebp), %eax       #  18:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  20:     call   t3 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_f1_10                 #  21:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $9636, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 6 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $21949, %eax            #   0:     mul    t1 <- 21949, 26091
    movl    $26091, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 59927
    movl    $59927, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t3 <- t2, 33459
    movl    $33459, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, 12(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_0:
    movl    $86185, %eax            #   6:     assign v0 <- 86185
    movl    %eax, v0               
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t0
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
