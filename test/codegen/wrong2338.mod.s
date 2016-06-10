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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 83 of <array 64 of <array 55 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 44 of <array 9 of <array 56 of <array 79 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $91449, %eax            #   3:     add    t6 <- 91449, 83210
    movl    $83210, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t6, 66193
    movl    $66193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v3 <- t7
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $52240, %eax            #   0:     sub    t4 <- 52240, 73307
    movl    $73307, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 75127
    movl    $75127, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 18738
    movl    $18738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t7 <- t6, 79971
    movl    $79971, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t8 <- t7, 96133
    movl    $96133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v1 <- t8
    movl    %eax, -40(%ebp)        
l_f1_2_while_cond:
    movl    $45648, %eax            #   7:     if     45648 > 45435 goto 3_while_body
    movl    $45435, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    movl    $98, %eax               #  11:     if     98 >= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  14:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #  16:     goto   2_while_cond
l_f1_1:
    movl    $58188, %eax            #  18:     mul    t9 <- 58188, 601
    movl    $601, %ebx             
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     assign v1 <- t9
    movl    %eax, -40(%ebp)        

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 44 of <array 9 of <array 56 of <array 79 of <array 73 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 13 of <array 83 of <array 64 of <array 55 of <array 17 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 35 of <array 96 of <array 24 of <array 97 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 63 of <array 12 of <array 82 of <array 22 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -258269500(%ebp)  258269464  [ $v5       <array 13 of <array 83 of <array 64 of <array 55 of <array 17 of <int>>>>>> %ebp-258269500 ]
    #   -386158516(%ebp)  127889016  [ $v6       <array 44 of <array 9 of <array 56 of <array 79 of <array 73 of <bool>>>>>> %ebp-386158516 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $386158504, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $96539626, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-258269500(%ebp)     # local array 'v5': 5 dimensions
    movl    $13,-258269496(%ebp)    #   dimension 1: 13 elements
    movl    $83,-258269492(%ebp)    #   dimension 2: 83 elements
    movl    $64,-258269488(%ebp)    #   dimension 3: 64 elements
    movl    $55,-258269484(%ebp)    #   dimension 4: 55 elements
    movl    $17,-258269480(%ebp)    #   dimension 5: 17 elements
    movl    $5,-386158516(%ebp)     # local array 'v6': 5 dimensions
    movl    $44,-386158512(%ebp)    #   dimension 1: 44 elements
    movl    $9,-386158508(%ebp)     #   dimension 2: 9 elements
    movl    $56,-386158504(%ebp)    #   dimension 3: 56 elements
    movl    $79,-386158500(%ebp)    #   dimension 4: 79 elements
    movl    $73,-386158496(%ebp)    #   dimension 5: 73 elements

    # function body
    leal    -386158516(%ebp), %eax  #   0:     &()    t4 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t4
    pushl   %eax                   
    leal    -258269500(%ebp), %eax  #   2:     &()    t5 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   4:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $98692, %eax            #   7:     div    t7 <- 98692, 32103
    movl    $32103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     div    t8 <- t7, 64574
    movl    $64574, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     if     t8 # 38067 goto 3_while_body
    movl    $38067, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_while_body:
    movl    $97, %eax               #  12:     if     97 <= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $1, %eax                #  15:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_8                  #  16:     goto   8
l_f2_7:
    movl    $0, %eax                #  18:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f2_8:
    movzbl  -33(%ebp), %eax         #  20:     assign v4 <- t9
    movb    %al, 20(%ebp)          
    jmp     l_f2_2_while_cond       #  21:     goto   2_while_cond
l_f2_1:
    call    dummyProcedure          #  23:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $386158504, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $33160, %eax            #   2:     add    t1 <- 33160, 36723
    movl    $36723, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 46665
    movl    $46665, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
    movl    $100, %eax              #   5:     assign v1 <- 100
    movb    %al, v1                
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, v1                
    call    dummyINTfunc            #   7:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
