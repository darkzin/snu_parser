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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 82 of <array 19 of <array 89 of <array 64 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 80 of <array 82 of <array 19 of <array 89 of <array 64 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #   1455169484(%ebp)  -1455169512  [ $v2       <array 80 of <array 82 of <array 19 of <array 89 of <array 64 of <int>>>>>> %ebp+1455169484 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1455169496, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-363792374, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1455169484(%ebp)     # local array 'v2': 5 dimensions
    movl    $80,1455169488(%ebp)    #   dimension 1: 80 elements
    movl    $82,1455169492(%ebp)    #   dimension 2: 82 elements
    movl    $19,1455169496(%ebp)    #   dimension 3: 19 elements
    movl    $89,1455169500(%ebp)    #   dimension 4: 89 elements
    movl    $64,1455169504(%ebp)    #   dimension 5: 64 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyINTfunc            #   3:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $91478, %eax            #   4:     if     91478 >= t7 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    movl    $52905, %eax            #   7:     assign v1 <- 52905
    movl    %eax, -28(%ebp)        
l_f1_7_while_cond:
    movl    $37392, %eax            #   9:     if     37392 < 1056 goto 8_while_body
    movl    $1056, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
l_f1_11_while_cond:
    movl    $31132, %eax            #  17:     if     31132 = 54770 goto 12_while_body
    movl    $54770, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_while_body:
    movl    $31518, %eax            #  20:     assign v1 <- 31518
    movl    %eax, -28(%ebp)        
l_f1_16_while_cond:
    jmp     l_f1_15                 #  22:     goto   15
    jmp     l_f1_16_while_cond      #  23:     goto   16_while_cond
l_f1_15:
    movl    $100, %eax              #  25:     return 100
    jmp     l_f1_exit              
    leal    1455169484(%ebp), %eax  #  26:     &()    t8 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  28:     call   f0
    addl    $4, %esp               
    jmp     l_f1_11_while_cond      #  29:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $-1455169496, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    f1                      #   2:     call   t6 <- f1
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     if     100 < t6 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    call    dummyINTfunc            #   6:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   7:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_exit              
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
l_f2_12_while_cond:
    jmp     l_f2_11                 #  15:     goto   11
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  17:     goto   15_while_cond
    jmp     l_f2_12_while_cond      #  18:     goto   12_while_cond
l_f2_11:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    WriteLn                 #   1:     call   WriteLn
    movl    $282, %eax              #   2:     div    t1 <- 282, 275
    movl    $275, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 73376
    movl    $73376, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t3 <- t2, 68633
    movl    $68633, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $49915, %eax            #   7:     sub    t4 <- 49915, 59508
    movl    $59508, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t5 <- t4, 63472
    movl    $63472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
