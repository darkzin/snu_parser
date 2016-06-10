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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 7 of <array 5 of <array 1 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $67885, %eax            #   1:     sub    t3 <- 67885, t2
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     return t3
    jmp     l_f0_exit              
    movl    $4634, %eax             #   3:     div    t4 <- 4634, 16382
    movl    $16382, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t5 <- t4, 40683
    movl    $40683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     return t5
    jmp     l_f0_exit              
    movl    $22585, %eax            #   6:     div    t6 <- 22585, 73352
    movl    $73352, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t7 <- t6, 52355
    movl    $52355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     add    t8 <- t7, 72547
    movl    $72547, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     sub    t9 <- t8, 25349
    movl    $25349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  10:     sub    t10 <- t9, 96612
    movl    $96612, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 46587
    movl    $46587, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 7 of <array 5 of <array 1 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 9 of <array 7 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -612(%ebp)  584  [ $v4       <array 2 of <array 7 of <array 5 of <array 1 of <array 8 of <bool>>>>>> %ebp-612 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $600, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $150, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-612(%ebp)           # local array 'v4': 5 dimensions
    movl    $2,-608(%ebp)           #   dimension 1: 2 elements
    movl    $7,-604(%ebp)           #   dimension 2: 7 elements
    movl    $5,-600(%ebp)           #   dimension 3: 5 elements
    movl    $1,-596(%ebp)           #   dimension 4: 1 elements
    movl    $8,-592(%ebp)           #   dimension 5: 8 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, 16(%ebp)          
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    movl    $100, %eax              #  10:     param  3 <- 100
    pushl   %eax                   
    leal    -612(%ebp), %eax        #  11:     &()    t4 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t4
    pushl   %eax                   
    movl    $54795, %eax            #  13:     param  1 <- 54795
    pushl   %eax                   
    jmp     l_f1_6                  #  14:     goto   6
    jmp     l_f1_6                  #  15:     goto   6
l_f1_6:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #  18:     goto   8
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  22:     call   t6 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $600, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 9 of <array 6 of <array 6 of <array 10 of <char>>>>>>> %ebp+12 ]
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
    movl    $98, %eax               #   0:     if     98 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $100, %eax              #   4:     if     100 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $0, %eax                #   9:     assign v3 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $12613, %eax            #  13:     if     12613 = 68166 goto 10
    movl    $68166, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  21:     assign v3 <- t2
    movb    %al, -15(%ebp)         
    movl    $12037, %eax            #  22:     if     12037 < 70313 goto 18
    movl    $70313, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_18                
    jmp     l_f2_16                 #  23:     goto   16
l_f2_18:
    jmp     l_f2_16                 #  25:     goto   16
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  27:     goto   17
l_f2_16:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  31:     assign v3 <- t3
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_4_if_true        #   5:     goto   4_if_true
    jmp     l_test_4_if_true        #   6:     goto   4_if_true
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   9:     goto   3
l_test_5_if_false:
l_test_3:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
